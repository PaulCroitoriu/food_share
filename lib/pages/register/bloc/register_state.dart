part of 'register_bloc.dart';

enum RegisterStatus { initial, loading, success, error }

enum UserType {
  @JsonValue('charity')
  charity,
  @JsonValue('donor')
  donor
}

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();

  const factory RegisterState({
    required RegisterStatus status,
    dynamic error,
  }) = _RegisterState;

  bool get isLoading => status == RegisterStatus.loading;

  factory RegisterState.initial() => const RegisterState(status: RegisterStatus.initial);
}
