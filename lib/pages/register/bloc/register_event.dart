part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.register({
    required String email,
    required String fullName,
    required String orgName,
    required String address,
    required UserType userType,
    required String password,
  }) = _Register;
}
