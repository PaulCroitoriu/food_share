// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_donation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddDonationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDonationEventCopyWith<$Res> {
  factory $AddDonationEventCopyWith(
          AddDonationEvent value, $Res Function(AddDonationEvent) then) =
      _$AddDonationEventCopyWithImpl<$Res, AddDonationEvent>;
}

/// @nodoc
class _$AddDonationEventCopyWithImpl<$Res, $Val extends AddDonationEvent>
    implements $AddDonationEventCopyWith<$Res> {
  _$AddDonationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AddDonationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AddDonationEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddDonationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$AddDonationState {
  AddDonationStatus get status => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddDonationStateCopyWith<AddDonationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDonationStateCopyWith<$Res> {
  factory $AddDonationStateCopyWith(
          AddDonationState value, $Res Function(AddDonationState) then) =
      _$AddDonationStateCopyWithImpl<$Res, AddDonationState>;
  @useResult
  $Res call({AddDonationStatus status, dynamic error});
}

/// @nodoc
class _$AddDonationStateCopyWithImpl<$Res, $Val extends AddDonationState>
    implements $AddDonationStateCopyWith<$Res> {
  _$AddDonationStateCopyWithImpl(this._value, this._then);

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
              as AddDonationStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddDonationStateImplCopyWith<$Res>
    implements $AddDonationStateCopyWith<$Res> {
  factory _$$AddDonationStateImplCopyWith(_$AddDonationStateImpl value,
          $Res Function(_$AddDonationStateImpl) then) =
      __$$AddDonationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddDonationStatus status, dynamic error});
}

/// @nodoc
class __$$AddDonationStateImplCopyWithImpl<$Res>
    extends _$AddDonationStateCopyWithImpl<$Res, _$AddDonationStateImpl>
    implements _$$AddDonationStateImplCopyWith<$Res> {
  __$$AddDonationStateImplCopyWithImpl(_$AddDonationStateImpl _value,
      $Res Function(_$AddDonationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_$AddDonationStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddDonationStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$AddDonationStateImpl extends _AddDonationState {
  _$AddDonationStateImpl({required this.status, this.error}) : super._();

  @override
  final AddDonationStatus status;
  @override
  final dynamic error;

  @override
  String toString() {
    return 'AddDonationState(status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDonationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDonationStateImplCopyWith<_$AddDonationStateImpl> get copyWith =>
      __$$AddDonationStateImplCopyWithImpl<_$AddDonationStateImpl>(
          this, _$identity);
}

abstract class _AddDonationState extends AddDonationState {
  factory _AddDonationState(
      {required final AddDonationStatus status,
      final dynamic error}) = _$AddDonationStateImpl;
  _AddDonationState._() : super._();

  @override
  AddDonationStatus get status;
  @override
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$AddDonationStateImplCopyWith<_$AddDonationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
