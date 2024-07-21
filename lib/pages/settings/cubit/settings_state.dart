part of 'settings_cubit.dart';

enum SettingsStatusEnum { initial, loading, languageChanged, signout, error }

enum LocationsEnum { turda, bucuresti, iasi, cluj }

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(false) bool darkTheme,
    @Default(SettingsStatusEnum.initial) SettingsStatusEnum status,
    @Default(LanguagesEnum.en) LanguagesEnum selectedLanguage,
    @Default(LocationsEnum.turda) LocationsEnum location,
    dynamic error,
  }) = _SettingsState;

  factory SettingsState.initial() => const SettingsState();
}
