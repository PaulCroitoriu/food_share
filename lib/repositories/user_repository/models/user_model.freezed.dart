// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get email => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get orgName => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  UserType get userType => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;
  List<String>? get donationHistory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String email,
      String fullName,
      String orgName,
      String address,
      UserType userType,
      String? phoneNumber,
      String? profileImageUrl,
      List<String>? donationHistory});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? fullName = null,
    Object? orgName = null,
    Object? address = null,
    Object? userType = null,
    Object? phoneNumber = freezed,
    Object? profileImageUrl = freezed,
    Object? donationHistory = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      orgName: null == orgName
          ? _value.orgName
          : orgName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      donationHistory: freezed == donationHistory
          ? _value.donationHistory
          : donationHistory // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String fullName,
      String orgName,
      String address,
      UserType userType,
      String? phoneNumber,
      String? profileImageUrl,
      List<String>? donationHistory});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? fullName = null,
    Object? orgName = null,
    Object? address = null,
    Object? userType = null,
    Object? phoneNumber = freezed,
    Object? profileImageUrl = freezed,
    Object? donationHistory = freezed,
  }) {
    return _then(_$UserImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      orgName: null == orgName
          ? _value.orgName
          : orgName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      donationHistory: freezed == donationHistory
          ? _value._donationHistory
          : donationHistory // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.email,
      required this.fullName,
      required this.orgName,
      required this.address,
      required this.userType,
      this.phoneNumber,
      this.profileImageUrl,
      final List<String>? donationHistory})
      : _donationHistory = donationHistory;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String email;
  @override
  final String fullName;
  @override
  final String orgName;
  @override
  final String address;
  @override
  final UserType userType;
  @override
  final String? phoneNumber;
  @override
  final String? profileImageUrl;
  final List<String>? _donationHistory;
  @override
  List<String>? get donationHistory {
    final value = _donationHistory;
    if (value == null) return null;
    if (_donationHistory is EqualUnmodifiableListView) return _donationHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'User(email: $email, fullName: $fullName, orgName: $orgName, address: $address, userType: $userType, phoneNumber: $phoneNumber, profileImageUrl: $profileImageUrl, donationHistory: $donationHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.orgName, orgName) || other.orgName == orgName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            const DeepCollectionEquality()
                .equals(other._donationHistory, _donationHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      fullName,
      orgName,
      address,
      userType,
      phoneNumber,
      profileImageUrl,
      const DeepCollectionEquality().hash(_donationHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String email,
      required final String fullName,
      required final String orgName,
      required final String address,
      required final UserType userType,
      final String? phoneNumber,
      final String? profileImageUrl,
      final List<String>? donationHistory}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get email;
  @override
  String get fullName;
  @override
  String get orgName;
  @override
  String get address;
  @override
  UserType get userType;
  @override
  String? get phoneNumber;
  @override
  String? get profileImageUrl;
  @override
  List<String>? get donationHistory;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
