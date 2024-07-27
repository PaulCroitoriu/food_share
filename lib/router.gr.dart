// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/cupertino.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:food_share/pages/add_donation/add_donation_page.dart' as _i1;
import 'package:food_share/pages/donation_details/donation_details.dart' as _i2;
import 'package:food_share/pages/donations/donations_page.dart' as _i3;
import 'package:food_share/pages/home/home_page.dart' as _i4;
import 'package:food_share/pages/login/login_page.dart' as _i5;
import 'package:food_share/pages/navigation/navigation.dart' as _i6;
import 'package:food_share/pages/notifications/notifications_page.dart' as _i7;
import 'package:food_share/pages/register/register_page.dart' as _i8;
import 'package:food_share/pages/settings/settings_page.dart' as _i9;
import 'package:food_share/repositories/donation_repository/models/donation_model.dart'
    as _i11;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    AddDonationRoute.name: (routeData) {
      final args = routeData.argsAs<AddDonationRouteArgs>(
          orElse: () => const AddDonationRouteArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(
            child: _i1.AddDonationPage(
          donation: args.donation,
          key: args.key,
        )),
      );
    },
    DonationDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DonationDetailsRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DonationDetailsPage(
          key: args.key,
          donation: args.donation,
        ),
      );
    },
    DonationsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(child: const _i3.DonationsPage()),
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(child: const _i5.LoginPage()),
      );
    },
    MainRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MainScreen(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.NotificationsPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(child: const _i8.RegisterPage()),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SettingsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddDonationPage]
class AddDonationRoute extends _i10.PageRouteInfo<AddDonationRouteArgs> {
  AddDonationRoute({
    _i11.Donation? donation,
    _i12.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          AddDonationRoute.name,
          args: AddDonationRouteArgs(
            donation: donation,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AddDonationRoute';

  static const _i10.PageInfo<AddDonationRouteArgs> page =
      _i10.PageInfo<AddDonationRouteArgs>(name);
}

class AddDonationRouteArgs {
  const AddDonationRouteArgs({
    this.donation,
    this.key,
  });

  final _i11.Donation? donation;

  final _i12.Key? key;

  @override
  String toString() {
    return 'AddDonationRouteArgs{donation: $donation, key: $key}';
  }
}

/// generated route for
/// [_i2.DonationDetailsPage]
class DonationDetailsRoute
    extends _i10.PageRouteInfo<DonationDetailsRouteArgs> {
  DonationDetailsRoute({
    _i13.Key? key,
    required _i11.Donation donation,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          DonationDetailsRoute.name,
          args: DonationDetailsRouteArgs(
            key: key,
            donation: donation,
          ),
          initialChildren: children,
        );

  static const String name = 'DonationDetailsRoute';

  static const _i10.PageInfo<DonationDetailsRouteArgs> page =
      _i10.PageInfo<DonationDetailsRouteArgs>(name);
}

class DonationDetailsRouteArgs {
  const DonationDetailsRouteArgs({
    this.key,
    required this.donation,
  });

  final _i13.Key? key;

  final _i11.Donation donation;

  @override
  String toString() {
    return 'DonationDetailsRouteArgs{key: $key, donation: $donation}';
  }
}

/// generated route for
/// [_i3.DonationsPage]
class DonationsRoute extends _i10.PageRouteInfo<void> {
  const DonationsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DonationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DonationsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MainScreen]
class MainRoute extends _i10.PageRouteInfo<void> {
  const MainRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.NotificationsPage]
class NotificationsRoute extends _i10.PageRouteInfo<void> {
  const NotificationsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.RegisterPage]
class RegisterRoute extends _i10.PageRouteInfo<void> {
  const RegisterRoute({List<_i10.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SettingsPage]
class SettingsRoute extends _i10.PageRouteInfo<void> {
  const SettingsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
