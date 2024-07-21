import 'package:flutter/material.dart';
import 'package:food_share/utils/utils.dart';

enum LanguagesEnum { ro, en, fr, es, it, de }

extension LanguageExtension on LanguagesEnum {
  String getLanguage() {
    switch (this) {
      case LanguagesEnum.ro:
        return LanguageConstats.romana;
      case LanguagesEnum.en:
        return LanguageConstats.english;
      case LanguagesEnum.fr:
        return LanguageConstats.french;
      case LanguagesEnum.es:
        return LanguageConstats.spanish;
      case LanguagesEnum.de:
        return LanguageConstats.german;
      case LanguagesEnum.it:
        return LanguageConstats.italian;
      default:
        return 'Unknown';
    }
  }

  Locale toLanguageLocale() {
    switch (this) {
      case LanguagesEnum.ro:
        return const Locale('ro');
      case LanguagesEnum.en:
        return const Locale('en');
      case LanguagesEnum.it:
        return const Locale('it');
      case LanguagesEnum.fr:
        return const Locale('fr');
      case LanguagesEnum.de:
        return const Locale('de');
      case LanguagesEnum.es:
        return const Locale('es');
      default:
        return const Locale('en');
    }
  }
}

extension StringToLanguageEnum on String {
  LanguagesEnum toLanguageEnum() {
    switch (this) {
      case LanguageConstats.romana:
      case 'ro':
      case 'romanian':
        return LanguagesEnum.ro;

      case LanguageConstats.english:
      case 'en':
      case 'english':
        return LanguagesEnum.en;

      case LanguageConstats.french:
      case 'fr':
      case 'french':
        return LanguagesEnum.fr;

      case LanguageConstats.spanish:
      case 'es':
      case 'spanish':
        return LanguagesEnum.es;

      case LanguageConstats.german:
      case 'de':
      case 'german':
        return LanguagesEnum.de;

      case LanguageConstats.italian:
      case 'it':
      case 'italian':
        return LanguagesEnum.it;

      default:
        return LanguagesEnum.en;
    }
  }
}
