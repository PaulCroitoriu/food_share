import 'package:food_share/pages/register/bloc/register_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String email,
    required String fullName,
    required String orgName,
    required String address,
    required UserType userType,
    String? phoneNumber,
    String? profileImageUrl,
    List<String>? donationHistory,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
