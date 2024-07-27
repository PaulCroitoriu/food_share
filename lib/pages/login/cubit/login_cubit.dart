import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_share/data/instances.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.initial());

  void emailChanged(String value) => emit(state.copyWith(email: value, status: LoginStatus.initial));
  void passwordChanged(String value) => emit(state.copyWith(password: value, status: LoginStatus.initial));
  void showPasswordChanged() => emit(state.copyWith(showPassword: !state.showPassword, status: LoginStatus.initial));

  void login({required String email, required String password}) async {
    emit(state.copyWith(status: LoginStatus.loading));

    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);

      String? fcmToken;

      if (Platform.isIOS) {
        final apnsToken = await FirebaseMessaging.instance.getAPNSToken();

        if (apnsToken != null) {
          fcmToken = await FirebaseMessaging.instance.getToken();
        }
      } else {
        fcmToken = await FirebaseMessaging.instance.getToken();
      }

      if (fcmToken != null) {
        final String userId = auth.currentUser!.uid;
        await FirebaseFirestore.instance.collection('users').doc(userId).set({
          'fcmToken': fcmToken,
        }, SetOptions(merge: true));
      }
      if (!isClosed) {
        emit(state.copyWith(status: LoginStatus.success));
      }
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(status: LoginStatus.failure, error: e.message));
    } catch (e) {
      emit(state.copyWith(status: LoginStatus.failure, error: e));
    }
  }
}
