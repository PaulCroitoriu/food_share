// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DonationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDonations,
    required TResult Function(List<Donation> donations) donationsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDonations,
    TResult? Function(List<Donation> donations)? donationsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDonations,
    TResult Function(List<Donation> donations)? donationsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDonations value) getDonations,
    required TResult Function(_DonationsUpdated value) donationsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDonations value)? getDonations,
    TResult? Function(_DonationsUpdated value)? donationsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDonations value)? getDonations,
    TResult Function(_DonationsUpdated value)? donationsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonationsEventCopyWith<$Res> {
  factory $DonationsEventCopyWith(
          DonationsEvent value, $Res Function(DonationsEvent) then) =
      _$DonationsEventCopyWithImpl<$Res, DonationsEvent>;
}

/// @nodoc
class _$DonationsEventCopyWithImpl<$Res, $Val extends DonationsEvent>
    implements $DonationsEventCopyWith<$Res> {
  _$DonationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDonationsImplCopyWith<$Res> {
  factory _$$GetDonationsImplCopyWith(
          _$GetDonationsImpl value, $Res Function(_$GetDonationsImpl) then) =
      __$$GetDonationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDonationsImplCopyWithImpl<$Res>
    extends _$DonationsEventCopyWithImpl<$Res, _$GetDonationsImpl>
    implements _$$GetDonationsImplCopyWith<$Res> {
  __$$GetDonationsImplCopyWithImpl(
      _$GetDonationsImpl _value, $Res Function(_$GetDonationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDonationsImpl implements _GetDonations {
  const _$GetDonationsImpl();

  @override
  String toString() {
    return 'DonationsEvent.getDonations()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDonationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDonations,
    required TResult Function(List<Donation> donations) donationsUpdated,
  }) {
    return getDonations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDonations,
    TResult? Function(List<Donation> donations)? donationsUpdated,
  }) {
    return getDonations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDonations,
    TResult Function(List<Donation> donations)? donationsUpdated,
    required TResult orElse(),
  }) {
    if (getDonations != null) {
      return getDonations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDonations value) getDonations,
    required TResult Function(_DonationsUpdated value) donationsUpdated,
  }) {
    return getDonations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDonations value)? getDonations,
    TResult? Function(_DonationsUpdated value)? donationsUpdated,
  }) {
    return getDonations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDonations value)? getDonations,
    TResult Function(_DonationsUpdated value)? donationsUpdated,
    required TResult orElse(),
  }) {
    if (getDonations != null) {
      return getDonations(this);
    }
    return orElse();
  }
}

abstract class _GetDonations implements DonationsEvent {
  const factory _GetDonations() = _$GetDonationsImpl;
}

/// @nodoc
abstract class _$$DonationsUpdatedImplCopyWith<$Res> {
  factory _$$DonationsUpdatedImplCopyWith(_$DonationsUpdatedImpl value,
          $Res Function(_$DonationsUpdatedImpl) then) =
      __$$DonationsUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Donation> donations});
}

/// @nodoc
class __$$DonationsUpdatedImplCopyWithImpl<$Res>
    extends _$DonationsEventCopyWithImpl<$Res, _$DonationsUpdatedImpl>
    implements _$$DonationsUpdatedImplCopyWith<$Res> {
  __$$DonationsUpdatedImplCopyWithImpl(_$DonationsUpdatedImpl _value,
      $Res Function(_$DonationsUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? donations = null,
  }) {
    return _then(_$DonationsUpdatedImpl(
      null == donations
          ? _value._donations
          : donations // ignore: cast_nullable_to_non_nullable
              as List<Donation>,
    ));
  }
}

/// @nodoc

class _$DonationsUpdatedImpl implements _DonationsUpdated {
  const _$DonationsUpdatedImpl(final List<Donation> donations)
      : _donations = donations;

  final List<Donation> _donations;
  @override
  List<Donation> get donations {
    if (_donations is EqualUnmodifiableListView) return _donations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donations);
  }

  @override
  String toString() {
    return 'DonationsEvent.donationsUpdated(donations: $donations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonationsUpdatedImpl &&
            const DeepCollectionEquality()
                .equals(other._donations, _donations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_donations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonationsUpdatedImplCopyWith<_$DonationsUpdatedImpl> get copyWith =>
      __$$DonationsUpdatedImplCopyWithImpl<_$DonationsUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDonations,
    required TResult Function(List<Donation> donations) donationsUpdated,
  }) {
    return donationsUpdated(donations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDonations,
    TResult? Function(List<Donation> donations)? donationsUpdated,
  }) {
    return donationsUpdated?.call(donations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDonations,
    TResult Function(List<Donation> donations)? donationsUpdated,
    required TResult orElse(),
  }) {
    if (donationsUpdated != null) {
      return donationsUpdated(donations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDonations value) getDonations,
    required TResult Function(_DonationsUpdated value) donationsUpdated,
  }) {
    return donationsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDonations value)? getDonations,
    TResult? Function(_DonationsUpdated value)? donationsUpdated,
  }) {
    return donationsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDonations value)? getDonations,
    TResult Function(_DonationsUpdated value)? donationsUpdated,
    required TResult orElse(),
  }) {
    if (donationsUpdated != null) {
      return donationsUpdated(this);
    }
    return orElse();
  }
}

abstract class _DonationsUpdated implements DonationsEvent {
  const factory _DonationsUpdated(final List<Donation> donations) =
      _$DonationsUpdatedImpl;

  List<Donation> get donations;
  @JsonKey(ignore: true)
  _$$DonationsUpdatedImplCopyWith<_$DonationsUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DonationsState {
  DonationsStatus get status => throw _privateConstructorUsedError;
  List<Donation> get donations => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DonationsStateCopyWith<DonationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonationsStateCopyWith<$Res> {
  factory $DonationsStateCopyWith(
          DonationsState value, $Res Function(DonationsState) then) =
      _$DonationsStateCopyWithImpl<$Res, DonationsState>;
  @useResult
  $Res call({DonationsStatus status, List<Donation> donations, dynamic error});
}

/// @nodoc
class _$DonationsStateCopyWithImpl<$Res, $Val extends DonationsState>
    implements $DonationsStateCopyWith<$Res> {
  _$DonationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? donations = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DonationsStatus,
      donations: null == donations
          ? _value.donations
          : donations // ignore: cast_nullable_to_non_nullable
              as List<Donation>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonationsStateImplCopyWith<$Res>
    implements $DonationsStateCopyWith<$Res> {
  factory _$$DonationsStateImplCopyWith(_$DonationsStateImpl value,
          $Res Function(_$DonationsStateImpl) then) =
      __$$DonationsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DonationsStatus status, List<Donation> donations, dynamic error});
}

/// @nodoc
class __$$DonationsStateImplCopyWithImpl<$Res>
    extends _$DonationsStateCopyWithImpl<$Res, _$DonationsStateImpl>
    implements _$$DonationsStateImplCopyWith<$Res> {
  __$$DonationsStateImplCopyWithImpl(
      _$DonationsStateImpl _value, $Res Function(_$DonationsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? donations = null,
    Object? error = freezed,
  }) {
    return _then(_$DonationsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DonationsStatus,
      donations: null == donations
          ? _value._donations
          : donations // ignore: cast_nullable_to_non_nullable
              as List<Donation>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DonationsStateImpl implements _DonationsState {
  const _$DonationsStateImpl(
      {required this.status,
      required final List<Donation> donations,
      this.error})
      : _donations = donations;

  @override
  final DonationsStatus status;
  final List<Donation> _donations;
  @override
  List<Donation> get donations {
    if (_donations is EqualUnmodifiableListView) return _donations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donations);
  }

  @override
  final dynamic error;

  @override
  String toString() {
    return 'DonationsState(status: $status, donations: $donations, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonationsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._donations, _donations) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_donations),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonationsStateImplCopyWith<_$DonationsStateImpl> get copyWith =>
      __$$DonationsStateImplCopyWithImpl<_$DonationsStateImpl>(
          this, _$identity);
}

abstract class _DonationsState implements DonationsState {
  const factory _DonationsState(
      {required final DonationsStatus status,
      required final List<Donation> donations,
      final dynamic error}) = _$DonationsStateImpl;

  @override
  DonationsStatus get status;
  @override
  List<Donation> get donations;
  @override
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$DonationsStateImplCopyWith<_$DonationsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
