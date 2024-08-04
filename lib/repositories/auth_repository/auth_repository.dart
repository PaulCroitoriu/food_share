import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/services.dart';
import 'package:food_share/models/failure_model.dart';
import 'package:food_share/pages/register/bloc/register_bloc.dart';
import 'package:food_share/repositories/auth_repository/base_auth_repository.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class AuthRepo extends BaseAuthRepo {
  final FirebaseFirestore _firebaseFirestore;
  final auth.FirebaseAuth _firebaseAuth;

  AuthRepo({FirebaseFirestore? firebaseFirestore, auth.FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? auth.FirebaseAuth.instance,
        _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Stream<auth.User?> get user => _firebaseAuth.userChanges();

  @override
  Future<auth.User?> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String fullName,
    required UserType userType,
    required String orgName,
    required String address,
  }) async {
    try {
      final credentials = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

      final user = credentials.user;

      if (user != null) {
        await user.updateDisplayName(fullName);
        await _firebaseFirestore.collection('users').doc(user.uid).set({
          'email': email,
          'fullName': fullName,
          'orgName': orgName,
          'address': address,
          'userType': userType.name.toString(),
        });

        print('User created and data written to Firestore successfully.');
      } else {
        print('Error: User is null after sign-up.');
      }

      return user;
    } on auth.FirebaseAuthException catch (err) {
      throw Failure(code: err.code, message: err.message);
    } on PlatformException catch (err) {
      throw Failure(code: err.code, message: err.message);
    }
  }

  @override
  Future<auth.User?> logInWithEmailAndPassword({required String email, required String password}) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);

      return userCredential.user;
    } on auth.FirebaseAuthException catch (err) {
      throw Failure(code: err.code, message: err.message);
    } on PlatformException catch (err) {
      throw Failure(code: err.code, message: err.message);
    }
  }

  @override
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }
}
