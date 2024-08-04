// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      email: json['email'] as String,
      fullName: json['fullName'] as String,
      orgName: json['orgName'] as String,
      address: json['address'] as String,
      userType: $enumDecode(_$UserTypeEnumMap, json['userType']),
      phoneNumber: json['phoneNumber'] as String?,
      profileImageUrl: json['profileImageUrl'] as String?,
      donationHistory: (json['donationHistory'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fullName': instance.fullName,
      'orgName': instance.orgName,
      'address': instance.address,
      'userType': _$UserTypeEnumMap[instance.userType]!,
      'phoneNumber': instance.phoneNumber,
      'profileImageUrl': instance.profileImageUrl,
      'donationHistory': instance.donationHistory,
    };

const _$UserTypeEnumMap = {
  UserType.charity: 'charity',
  UserType.donor: 'donor',
};
