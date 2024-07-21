import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_share/router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    var user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      resolver.next(true);
    } else {
      router.push(const LoginRoute());
    }
  }
}
