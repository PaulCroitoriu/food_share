part of 'auth_bloc.dart';

enum AuthStatus { unknown, authenticated, unauthenticated }

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthStatus status,
    auth.User? user,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(status: AuthStatus.unknown);
}
