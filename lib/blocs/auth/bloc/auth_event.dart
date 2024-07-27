part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.userChanged({auth.User? user}) = _UserChanged;
  const factory AuthEvent.logout() = _Logout;
}
