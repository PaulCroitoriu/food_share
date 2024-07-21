part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.register() = _Register;
  const factory RegisterEvent.emailChanged(String email) = _EmailChanged;
  const factory RegisterEvent.nameChanged(String name) = _NameChanged;
  const factory RegisterEvent.userTypeChanged(UserType type) = _UserTypeChanged;
  const factory RegisterEvent.passwordChanged(String password) = _PasswordChanged;
  const factory RegisterEvent.repeatPasswordChanged(String repeatPassword) = _RepeatPasswprdChanged;
}
