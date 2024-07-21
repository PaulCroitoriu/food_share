// import 'dart:async';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:food_share/pages/pages.dart';

// import 'package:go_router/go_router.dart';

// class AppRouter {
//   static final AppRouter _instance = AppRouter._internal();

//   static AppRouter get instance => _instance;

//   static late final GoRouter router;

//   static GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();
//   GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

//   factory AppRouter() {
//     return _instance;
//   }
//   AppRouter._internal() {
//     final routes = [
//       GoRoute(
//         parentNavigatorKey: rootNavigatorKey,
//         path: '/login',
//         name: 'login',
//         pageBuilder: (context, state) {
//           return NoTransitionPage(
//             child: BlocProvider<LoginCubit>(
//               create: (context) => LoginCubit(),
//               child: const LoginPage(),
//             ),
//           );
//         },
//       ),
//       GoRoute(
//         parentNavigatorKey: rootNavigatorKey,
//         path: '/register',
//         name: 'register',
//         pageBuilder: (context, state) {
//           return const NoTransitionPage(
//             child: RegisterPage(),
//           );
//         },
//       ),
//       GoRoute(
//         parentNavigatorKey: rootNavigatorKey,
//         path: '/home',
//         name: 'home',
//         pageBuilder: (context, state) {
//           return const NoTransitionPage(
//             child: HomePage(),
//           );
//         },
//       ),
//     ];

//     router = GoRouter(
//       navigatorKey: rootNavigatorKey,
//       initialLocation: '/login',
//       debugLogDiagnostics: true,
//       // observers: [appNavigatorObserver],
//       refreshListenable: GoRouterRefreshStream(),
//       redirect: (context, state) {
//         if (FirebaseAuth.instance.currentUser == null) {
//           if (state.fullPath == '/register' || state.fullPath == '/login') {
//             return state.fullPath;
//           } else {
//             return '/login';
//           }
//         } else {
//           return '/home';
//         }
//       },
//       routes: routes,
//       errorBuilder: (context, state) => const Scaffold(), // todo a not found page
//     );
//   }

//   static Page getPage({
//     required Widget child,
//     required GoRouterState state,
//   }) {
//     return MaterialPage(
//       maintainState: true,
//       key: state.pageKey,
//       child: child,
//     );
//   }
// }

// class GoRouterRefreshStream extends ChangeNotifier {
//   late final StreamSubscription<dynamic> _subscription;

//   GoRouterRefreshStream() {
//     notifyListeners();
//     _subscription = FirebaseAuth.instance.userChanges().listen((user) {
//       notifyListeners();
//     });
//   }

//   @override
//   void dispose() {
//     _subscription.cancel();
//     super.dispose();
//   }
// }
