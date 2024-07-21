import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuthException, FirebaseException, UserCredential;
import 'package:flutter_bloc/flutter_bloc.dart' show Bloc;
import 'package:food_share/data/instances.dart' show auth, db;
import 'package:food_share/pages/register/extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';

part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState.initial()) {
    on<_EmailChanged>((event, emit) => emit(state.copyWith(email: event.email)));
    on<_NameChanged>((event, emit) => emit(state.copyWith(fullName: event.name)));
    on<_PasswordChanged>((event, emit) => emit(state.copyWith(password: event.password)));
    on<_RepeatPasswprdChanged>((event, emit) => emit(state.copyWith(repeatPassword: event.repeatPassword)));
    on<_UserTypeChanged>((event, emit) => emit(state.copyWith(userType: event.type)));

    on<_Register>((event, emit) async {
      try {
        emit(state.copyWith(status: RegisterStatus.loading));

        final UserCredential user = await auth.createUserWithEmailAndPassword(
          email: state.email,
          password: state.password,
        );

        if (user.user != null) {
          final data = {
            "email": state.email,
            "fullName": state.fullName,
            'userType': state.userType?.value,
          };

          await db.collection('users').doc(user.user!.uid).set(data);
          emit(state.copyWith(status: RegisterStatus.success));
        }
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
