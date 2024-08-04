// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DonationDetailsState {
  DonationDetailsStatus get status => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DonationDetailsStateCopyWith<DonationDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonationDetailsStateCopyWith<$Res> {
  factory $DonationDetailsStateCopyWith(DonationDetailsState value,
          $Res Function(DonationDetailsState) then) =
      _$DonationDetailsStateCopyWithImpl<$Res, DonationDetailsState>;
  @useResult
  $Res call({DonationDetailsStatus status, dynamic error});
}

/// @nodoc
class _$DonationDetailsStateCopyWithImpl<$Res,
        $Val extends DonationDetailsState>
    implements $DonationDetailsStateCopyWith<$Res> {
  _$DonationDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DonationDetailsStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonationDetailsStateImplCopyWith<$Res>
    implements $DonationDetailsStateCopyWith<$Res> {
  factory _$$DonationDetailsStateImplCopyWith(_$DonationDetailsStateImpl value,
          $Res Function(_$DonationDetailsStateImpl) then) =
      __$$DonationDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DonationDetailsStatus status, dynamic error});
}

/// @nodoc
class __$$DonationDetailsStateImplCopyWithImpl<$Res>
    extends _$DonationDetailsStateCopyWithImpl<$Res, _$DonationDetailsStateImpl>
    implements _$$DonationDetailsStateImplCopyWith<$Res> {
  __$$DonationDetailsStateImplCopyWithImpl(_$DonationDetailsStateImpl _value,
      $Res Function(_$DonationDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_$DonationDetailsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DonationDetailsStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DonationDetailsStateImpl implements _DonationDetailsState {
  const _$DonationDetailsStateImpl({required this.status, this.error});

  @override
  final DonationDetailsStatus status;
  @override
  final dynamic error;

  @override
  String toString() {
    return 'DonationDetailsState(status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonationDetailsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonationDetailsStateImplCopyWith<_$DonationDetailsStateImpl>
      get copyWith =>
          __$$DonationDetailsStateImplCopyWithImpl<_$DonationDetailsStateImpl>(
              this, _$identity);
}

abstract class _DonationDetailsState implements DonationDetailsState {
  const factory _DonationDetailsState(
      {required final DonationDetailsStatus status,
      final dynamic error}) = _$DonationDetailsStateImpl;

  @override
  DonationDetailsStatus get status;
  @override
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$DonationDetailsStateImplCopyWith<_$DonationDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
