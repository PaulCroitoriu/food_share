import 'package:food_share/pages/register/bloc/register_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String email,
    required String fullName,
    required String orgName,
    required String address,
    required UserType userType,
    String? phoneNumber,
    String? profileImageUrl,
    List<String>? donationHistory,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
