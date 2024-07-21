import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_share/pages/settings/models/language_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(SettingsState.initial());

  void themeChanged() => emit(state.copyWith(darkTheme: !state.darkTheme, status: SettingsStatusEnum.initial));
  void languageChanged(LanguagesEnum language) => emit(state.copyWith(selectedLanguage: language, status: SettingsStatusEnum.languageChanged));
  void locationChanged(LocationsEnum location) => emit(state.copyWith(location: location, status: SettingsStatusEnum.initial));

  void logout() async {
    emit(state.copyWith(status: SettingsStatusEnum.loading));
    try {
      await FirebaseAuth.instance.signOut();
      emit(state.copyWith(status: SettingsStatusEnum.signout));
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(status: SettingsStatusEnum.error, error: e));
    } catch (e) {
      emit(state.copyWith(status: SettingsStatusEnum.error, error: e));
    }
  }

  @override
  SettingsState? fromJson(Map<String, dynamic> json) {
    return SettingsState(
      darkTheme: json['darkTheme'],
      selectedLanguage: (json['language'] as String).toLanguageEnum(),
    );
  }

  @override
  Map<String, dynamic>? toJson(SettingsState state) {
    return {
      'darkTheme': state.darkTheme,
      'language': state.selectedLanguage.name,
    };
  }
}
