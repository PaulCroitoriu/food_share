import 'package:firebase_auth/firebase_auth.dart';
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

  void login() async {
    emit(state.copyWith(status: LoginStatus.loading));

    try {
      await auth.signInWithEmailAndPassword(email: state.email, password: state.password);
      emit(state.copyWith(status: LoginStatus.success));
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(status: LoginStatus.failure, error: e.message));
    } catch (e) {
      emit(state.copyWith(status: LoginStatus.failure, error: e));
    }
  }
}
