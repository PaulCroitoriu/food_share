import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<_UserChanged>(
      (event, emit) => emit(
        state.copyWith(
          user: event.user,
          status: event.user != null ? AuthStatus.authenticated : AuthStatus.unauthenticated,
        ),
      ),
    );

    on<_Logout>((event, emit) => {});
  }
}
