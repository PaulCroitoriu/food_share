part of 'login_cubit.dart';

enum LoginStatus { initial, loading, success, failure }

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus status,
    @Default(false) bool showPassword,
    @Default("paul@email.com") String email,
    @Default("test123") String password,
    dynamic error,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState();

  bool get enableLoginButton => status != LoginStatus.loading && email.isNotEmpty && password.isNotEmpty;
}
