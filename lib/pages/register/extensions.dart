import 'package:food_share/pages/register/bloc/register_bloc.dart';

extension UserTypeExtension on UserType {
  int get value {
    switch (this) {
      case UserType.charity:
        return 1;
      case UserType.donor:
        return 2;
      default:
        return 0;
    }
  }
}
