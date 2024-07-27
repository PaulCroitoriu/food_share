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
    required TResult Function(
            String title,
            String description,
            double quantity,
            Unit unit,
            FoodType foodType,
            DonationCondition donationCondition,
            SuitableFor suitableFor,
            UrgencyLevel urgencyLevel,
            DateTime? expireDate,
            List<File> images)
        postDonation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String title,
            String description,
            double quantity,
            Unit unit,
            FoodType foodType,
            DonationCondition donationCondition,
            SuitableFor suitableFor,
            UrgencyLevel urgencyLevel,
            DateTime? expireDate,
            List<File> images)?
        postDonation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String title,
            String description,
            double quantity,
            Unit unit,
            FoodType foodType,
            DonationCondition donationCondition,
            SuitableFor suitableFor,
            UrgencyLevel urgencyLevel,
            DateTime? expireDate,
            List<File> images)?
        postDonation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostDonation value) postDonation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostDonation value)? postDonation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostDonation value)? postDonation,
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
    required TResult Function(
            String title,
            String description,
            double quantity,
            Unit unit,
            FoodType foodType,
            DonationCondition donationCondition,
            SuitableFor suitableFor,
            UrgencyLevel urgencyLevel,
            DateTime? expireDate,
            List<File> images)
        postDonation,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String title,
            String description,
            double quantity,
            Unit unit,
            FoodType foodType,
            DonationCondition donationCondition,
            SuitableFor suitableFor,
            UrgencyLevel urgencyLevel,
            DateTime? expireDate,
            List<File> images)?
        postDonation,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String title,
            String description,
            double quantity,
            Unit unit,
            FoodType foodType,
            DonationCondition donationCondition,
            SuitableFor suitableFor,
            UrgencyLevel urgencyLevel,
            DateTime? expireDate,
            List<File> images)?
        postDonation,
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
    required TResult Function(_PostDonation value) postDonation,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostDonation value)? postDonation,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostDonation value)? postDonation,
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
abstract class _$$PostDonationImplCopyWith<$Res> {
  factory _$$PostDonationImplCopyWith(
          _$PostDonationImpl value, $Res Function(_$PostDonationImpl) then) =
      __$$PostDonationImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      String description,
      double quantity,
      Unit unit,
      FoodType foodType,
      DonationCondition donationCondition,
      SuitableFor suitableFor,
      UrgencyLevel urgencyLevel,
      DateTime? expireDate,
      List<File> images});
}

/// @nodoc
class __$$PostDonationImplCopyWithImpl<$Res>
    extends _$AddDonationEventCopyWithImpl<$Res, _$PostDonationImpl>
    implements _$$PostDonationImplCopyWith<$Res> {
  __$$PostDonationImplCopyWithImpl(
      _$PostDonationImpl _value, $Res Function(_$PostDonationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? quantity = null,
    Object? unit = null,
    Object? foodType = null,
    Object? donationCondition = null,
    Object? suitableFor = null,
    Object? urgencyLevel = null,
    Object? expireDate = freezed,
    Object? images = null,
  }) {
    return _then(_$PostDonationImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit,
      foodType: null == foodType
          ? _value.foodType
          : foodType // ignore: cast_nullable_to_non_nullable
              as FoodType,
      donationCondition: null == donationCondition
          ? _value.donationCondition
          : donationCondition // ignore: cast_nullable_to_non_nullable
              as DonationCondition,
      suitableFor: null == suitableFor
          ? _value.suitableFor
          : suitableFor // ignore: cast_nullable_to_non_nullable
              as SuitableFor,
      urgencyLevel: null == urgencyLevel
          ? _value.urgencyLevel
          : urgencyLevel // ignore: cast_nullable_to_non_nullable
              as UrgencyLevel,
      expireDate: freezed == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$PostDonationImpl implements _PostDonation {
  const _$PostDonationImpl(
      {required this.title,
      required this.description,
      required this.quantity,
      required this.unit,
      required this.foodType,
      required this.donationCondition,
      required this.suitableFor,
      required this.urgencyLevel,
      this.expireDate,
      final List<File> images = const []})
      : _images = images;

  @override
  final String title;
  @override
  final String description;
  @override
  final double quantity;
  @override
  final Unit unit;
  @override
  final FoodType foodType;
  @override
  final DonationCondition donationCondition;
  @override
  final SuitableFor suitableFor;
  @override
  final UrgencyLevel urgencyLevel;
  @override
  final DateTime? expireDate;
  final List<File> _images;
  @override
  @JsonKey()
  List<File> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'AddDonationEvent.postDonation(title: $title, description: $description, quantity: $quantity, unit: $unit, foodType: $foodType, donationCondition: $donationCondition, suitableFor: $suitableFor, urgencyLevel: $urgencyLevel, expireDate: $expireDate, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDonationImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.foodType, foodType) ||
                other.foodType == foodType) &&
            (identical(other.donationCondition, donationCondition) ||
                other.donationCondition == donationCondition) &&
            (identical(other.suitableFor, suitableFor) ||
                other.suitableFor == suitableFor) &&
            (identical(other.urgencyLevel, urgencyLevel) ||
                other.urgencyLevel == urgencyLevel) &&
            (identical(other.expireDate, expireDate) ||
                other.expireDate == expireDate) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      quantity,
      unit,
      foodType,
      donationCondition,
      suitableFor,
      urgencyLevel,
      expireDate,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDonationImplCopyWith<_$PostDonationImpl> get copyWith =>
      __$$PostDonationImplCopyWithImpl<_$PostDonationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String title,
            String description,
            double quantity,
            Unit unit,
            FoodType foodType,
            DonationCondition donationCondition,
            SuitableFor suitableFor,
            UrgencyLevel urgencyLevel,
            DateTime? expireDate,
            List<File> images)
        postDonation,
  }) {
    return postDonation(title, description, quantity, unit, foodType,
        donationCondition, suitableFor, urgencyLevel, expireDate, images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String title,
            String description,
            double quantity,
            Unit unit,
            FoodType foodType,
            DonationCondition donationCondition,
            SuitableFor suitableFor,
            UrgencyLevel urgencyLevel,
            DateTime? expireDate,
            List<File> images)?
        postDonation,
  }) {
    return postDonation?.call(title, description, quantity, unit, foodType,
        donationCondition, suitableFor, urgencyLevel, expireDate, images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String title,
            String description,
            double quantity,
            Unit unit,
            FoodType foodType,
            DonationCondition donationCondition,
            SuitableFor suitableFor,
            UrgencyLevel urgencyLevel,
            DateTime? expireDate,
            List<File> images)?
        postDonation,
    required TResult orElse(),
  }) {
    if (postDonation != null) {
      return postDonation(title, description, quantity, unit, foodType,
          donationCondition, suitableFor, urgencyLevel, expireDate, images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostDonation value) postDonation,
  }) {
    return postDonation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostDonation value)? postDonation,
  }) {
    return postDonation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostDonation value)? postDonation,
    required TResult orElse(),
  }) {
    if (postDonation != null) {
      return postDonation(this);
    }
    return orElse();
  }
}

abstract class _PostDonation implements AddDonationEvent {
  const factory _PostDonation(
      {required final String title,
      required final String description,
      required final double quantity,
      required final Unit unit,
      required final FoodType foodType,
      required final DonationCondition donationCondition,
      required final SuitableFor suitableFor,
      required final UrgencyLevel urgencyLevel,
      final DateTime? expireDate,
      final List<File> images}) = _$PostDonationImpl;

  String get title;
  String get description;
  double get quantity;
  Unit get unit;
  FoodType get foodType;
  DonationCondition get donationCondition;
  SuitableFor get suitableFor;
  UrgencyLevel get urgencyLevel;
  DateTime? get expireDate;
  List<File> get images;
  @JsonKey(ignore: true)
  _$$PostDonationImplCopyWith<_$PostDonationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddDonationState {
  AddDonationStatus get status => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  Unit? get unit => throw _privateConstructorUsedError;
  FoodType? get foodType => throw _privateConstructorUsedError;
  DonationCondition? get donationCondition =>
      throw _privateConstructorUsedError;
  SuitableFor? get suitableFor => throw _privateConstructorUsedError;
  UrgencyLevel? get urgencyLevel => throw _privateConstructorUsedError;
  DateTime? get expireDate => throw _privateConstructorUsedError;
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
  $Res call(
      {AddDonationStatus status,
      double quantity,
      Unit? unit,
      FoodType? foodType,
      DonationCondition? donationCondition,
      SuitableFor? suitableFor,
      UrgencyLevel? urgencyLevel,
      DateTime? expireDate,
      dynamic error});
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
    Object? quantity = null,
    Object? unit = freezed,
    Object? foodType = freezed,
    Object? donationCondition = freezed,
    Object? suitableFor = freezed,
    Object? urgencyLevel = freezed,
    Object? expireDate = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddDonationStatus,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit?,
      foodType: freezed == foodType
          ? _value.foodType
          : foodType // ignore: cast_nullable_to_non_nullable
              as FoodType?,
      donationCondition: freezed == donationCondition
          ? _value.donationCondition
          : donationCondition // ignore: cast_nullable_to_non_nullable
              as DonationCondition?,
      suitableFor: freezed == suitableFor
          ? _value.suitableFor
          : suitableFor // ignore: cast_nullable_to_non_nullable
              as SuitableFor?,
      urgencyLevel: freezed == urgencyLevel
          ? _value.urgencyLevel
          : urgencyLevel // ignore: cast_nullable_to_non_nullable
              as UrgencyLevel?,
      expireDate: freezed == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
  $Res call(
      {AddDonationStatus status,
      double quantity,
      Unit? unit,
      FoodType? foodType,
      DonationCondition? donationCondition,
      SuitableFor? suitableFor,
      UrgencyLevel? urgencyLevel,
      DateTime? expireDate,
      dynamic error});
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
    Object? quantity = null,
    Object? unit = freezed,
    Object? foodType = freezed,
    Object? donationCondition = freezed,
    Object? suitableFor = freezed,
    Object? urgencyLevel = freezed,
    Object? expireDate = freezed,
    Object? error = freezed,
  }) {
    return _then(_$AddDonationStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddDonationStatus,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit?,
      foodType: freezed == foodType
          ? _value.foodType
          : foodType // ignore: cast_nullable_to_non_nullable
              as FoodType?,
      donationCondition: freezed == donationCondition
          ? _value.donationCondition
          : donationCondition // ignore: cast_nullable_to_non_nullable
              as DonationCondition?,
      suitableFor: freezed == suitableFor
          ? _value.suitableFor
          : suitableFor // ignore: cast_nullable_to_non_nullable
              as SuitableFor?,
      urgencyLevel: freezed == urgencyLevel
          ? _value.urgencyLevel
          : urgencyLevel // ignore: cast_nullable_to_non_nullable
              as UrgencyLevel?,
      expireDate: freezed == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$AddDonationStateImpl extends _AddDonationState {
  _$AddDonationStateImpl(
      {required this.status,
      required this.quantity,
      this.unit,
      this.foodType,
      this.donationCondition,
      this.suitableFor,
      this.urgencyLevel,
      this.expireDate,
      this.error})
      : super._();

  @override
  final AddDonationStatus status;
  @override
  final double quantity;
  @override
  final Unit? unit;
  @override
  final FoodType? foodType;
  @override
  final DonationCondition? donationCondition;
  @override
  final SuitableFor? suitableFor;
  @override
  final UrgencyLevel? urgencyLevel;
  @override
  final DateTime? expireDate;
  @override
  final dynamic error;

  @override
  String toString() {
    return 'AddDonationState(status: $status, quantity: $quantity, unit: $unit, foodType: $foodType, donationCondition: $donationCondition, suitableFor: $suitableFor, urgencyLevel: $urgencyLevel, expireDate: $expireDate, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDonationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.foodType, foodType) ||
                other.foodType == foodType) &&
            (identical(other.donationCondition, donationCondition) ||
                other.donationCondition == donationCondition) &&
            (identical(other.suitableFor, suitableFor) ||
                other.suitableFor == suitableFor) &&
            (identical(other.urgencyLevel, urgencyLevel) ||
                other.urgencyLevel == urgencyLevel) &&
            (identical(other.expireDate, expireDate) ||
                other.expireDate == expireDate) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      quantity,
      unit,
      foodType,
      donationCondition,
      suitableFor,
      urgencyLevel,
      expireDate,
      const DeepCollectionEquality().hash(error));

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
      required final double quantity,
      final Unit? unit,
      final FoodType? foodType,
      final DonationCondition? donationCondition,
      final SuitableFor? suitableFor,
      final UrgencyLevel? urgencyLevel,
      final DateTime? expireDate,
      final dynamic error}) = _$AddDonationStateImpl;
  _AddDonationState._() : super._();

  @override
  AddDonationStatus get status;
  @override
  double get quantity;
  @override
  Unit? get unit;
  @override
  FoodType? get foodType;
  @override
  DonationCondition? get donationCondition;
  @override
  SuitableFor? get suitableFor;
  @override
  UrgencyLevel? get urgencyLevel;
  @override
  DateTime? get expireDate;
  @override
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$AddDonationStateImplCopyWith<_$AddDonationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
