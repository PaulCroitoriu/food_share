import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:food_share/pages/register/bloc/register_bloc.dart';

abstract class BaseAuthRepo {
  Stream<auth.User?> get user;

  Future<auth.User?> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String fullName,
    required UserType userType,
    required String orgName,
    required String address,
  });

  Future<auth.User?> logInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> logOut();
}
