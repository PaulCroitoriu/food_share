part of 'register_bloc.dart';

enum RegisterStatus { initial, loading, success, error }

enum UserType { charity, donor }

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();

  const factory RegisterState({
    required String email,
    required String password,
    required String repeatPassword,
    required String fullName,
    UserType? userType,
    required RegisterStatus status,
    dynamic error,
  }) = _RegisterState;

  bool get isLoading => status == RegisterStatus.loading;

  factory RegisterState.initial() => const RegisterState(
        email: '',
        password: '',
        repeatPassword: '',
        fullName: '',
        status: RegisterStatus.initial,
      );
}
