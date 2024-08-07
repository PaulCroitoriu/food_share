import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_share/config/injectable.dart';
import 'package:food_share/core/translations/codegen_loader.g.dart';
import 'package:food_share/pages/settings/models/language_model.dart';
import 'package:food_share/repositories/auth_repository/auth_repository.dart';
import 'package:food_share/repositories/notification_repository/notification_repository.dart';
import 'package:food_share/repositories/user_repository/user_repository.dart';
import 'package:food_share/router.gr.dart';
import 'package:food_share/utils/utils.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'package:food_share/config/theme_config.dart';
import 'package:food_share/firebase_options.dart';
import 'package:food_share/pages/settings/cubit/settings_cubit.dart';
import 'package:food_share/router.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb ? HydratedStorage.webStorageDirectory : await getApplicationDocumentsDirectory(),
  );

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  configureDependencies();

  await FirebaseMessaging.instance.getInitialMessage();
  await FirebaseMessaging.instance.requestPermission();

  runApp(
    EasyLocalization(
      supportedLocales: locales,
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      saveLocale: true,
      assetLoader: const CodegenLoader(),
      startLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void onLanguageChanged(Locale locale) async => await context.setLocale(locale);
  final _appRouter = AppRouter();

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        getIt<UserRepository>().fetchUser();
        _appRouter.replaceAll([const HomeRoute()]);
      } else {
        _appRouter.replaceAll([const LoginRoute()]);
      }
    });

    var initializationSettingsAndroid = const AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettingsIOS = const DarwinInitializationSettings();
    var initializationSettings = InitializationSettings(android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    flutterLocalNotificationsPlugin.initialize(initializationSettings);

    _showNotification();
  }

  Future<void> _showNotification() async {
    var androidPlatformChannelSpecifics = const AndroidNotificationDetails('your_channel_id', 'your_channel_name',
        channelDescription: 'your_channel_description', importance: Importance.max, priority: Priority.high, ticker: 'ticker');
    var iOSPlatformChannelSpecifics = const DarwinNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics, iOS: iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
      0,
      'Donation Approved',
      'Your claim "Fresh bread" has been approved. Please proceed with the pickup.',
      platformChannelSpecifics,
      payload: 'item x',
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => AuthRepo()),
        RepositoryProvider<NotificationRepository>(create: (context) => NotificationRepository()),
      ],
      child: BlocProvider(
        create: (context) => SettingsCubit(),
        child: BlocConsumer<SettingsCubit, SettingsState>(
          listener: (context, state) {
            if (state.status == SettingsStatusEnum.languageChanged) {
              setState(() {
                onLanguageChanged(state.selectedLanguage.toLanguageLocale());
              });
            }
          },
          builder: (context, state) {
            return MaterialApp.router(
              onGenerateTitle: (context) => "Food Share",
              title: 'Food Share',
              debugShowCheckedModeBanner: false,
              theme: ThemeConfig.getThemeData(context, state.darkTheme),
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              routerDelegate: AutoRouterDelegate(
                _appRouter,
                navigatorObservers: () => [AutoRouteObserver()],
              ),
              routeInformationParser: _appRouter.defaultRouteParser(),
            );
          },
        ),
      ),
    );
  }
}


// dart run easy_localization:generate -S assets/translations  -O lib/core/translations
// dart run easy_localization:generate -S assets/translations  -O lib/core/translations -f keys -o locale_keys.g.dart
// dart run build_runner watch --delete-conflicting-outputs