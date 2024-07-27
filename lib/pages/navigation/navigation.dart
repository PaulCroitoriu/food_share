import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_share/core/translations/locale_keys.g.dart';
import 'package:food_share/pages/settings/cubit/settings_cubit.dart';
import 'package:food_share/router.gr.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return AutoTabsRouter(
          homeIndex: 0,
          routes: const [
            HomeRoute(),
            DonationsRoute(),
            NotificationsRoute(),
            SettingsRoute(),
          ],
          builder: (ctx, child) {
            final tabsRouter = AutoTabsRouter.of(ctx);

            return Scaffold(
              body: child,
              bottomNavigationBar: NavigationBar(
                height: 70,
                selectedIndex: tabsRouter.activeIndex,
                onDestinationSelected: (index) {
                  tabsRouter.setActiveIndex(index);
                },
                elevation: 10,
                destinations: [
                  NavigationDestination(
                    icon: const Icon(CupertinoIcons.home),
                    label: LocaleKeys.home.tr(),
                  ),
                  const NavigationDestination(
                    icon: Icon(CupertinoIcons.gift),
                    label: "Donations",
                  ),
                  const NavigationDestination(
                    icon: Icon(CupertinoIcons.bell),
                    label: "Notifications",
                  ),
                  NavigationDestination(
                    icon: const Icon(CupertinoIcons.settings),
                    label: LocaleKeys.settings.tr(),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
