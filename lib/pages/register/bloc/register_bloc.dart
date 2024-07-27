import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuthException;
import 'package:flutter_bloc/flutter_bloc.dart' show Bloc;
import 'package:food_share/pages/register/extensions.dart';
import 'package:food_share/repositories/auth_repository/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';

part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepo _authRepo;

  RegisterBloc({required AuthRepo authRepo})
      : _authRepo = authRepo,
        super(RegisterState.initial()) {
    on<_Register>((event, emit) async {
      try {
        emit(state.copyWith(status: RegisterStatus.loading));

        await _authRepo.signUpWithEmailAndPassword(
          email: event.email,
          password: event.password,
          fullName: event.fullName,
          orgName: event.orgName,
          address: event.address,
          userType: event.userType,
        );

        emit(state.copyWith(status: RegisterStatus.success));
      } catch (e) {
        if (e is FirebaseAuthException) {
          emit(state.copyWith(status: RegisterStatus.error, error: e.message));
        } else {
          emit(state.copyWith(status: RegisterStatus.error, error: e.toString()));
        }
      }
    });
  }
}
