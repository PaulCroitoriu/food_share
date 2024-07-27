// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Donation _$DonationFromJson(Map<String, dynamic> json) {
  return _Donation.fromJson(json);
}

/// @nodoc
mixin _$Donation {
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  Unit get unit => throw _privateConstructorUsedError;
  FoodType get foodType => throw _privateConstructorUsedError;
  DonationCondition get condition => throw _privateConstructorUsedError;
  SuitableFor get suitableFor => throw _privateConstructorUsedError;
  String get donorId => throw _privateConstructorUsedError;
  String get pickUpLocation => throw _privateConstructorUsedError;
  DateTime get pickUpTimeStart => throw _privateConstructorUsedError;
  DateTime? get bestBeforeDate => throw _privateConstructorUsedError;
  UrgencyLevel get urgency => throw _privateConstructorUsedError;
  bool get complianceVerified => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  String? get disclaimer => throw _privateConstructorUsedError;
  String? get specialInstructions => throw _privateConstructorUsedError;
  DonationStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonationCopyWith<Donation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonationCopyWith<$Res> {
  factory $DonationCopyWith(Donation value, $Res Function(Donation) then) =
      _$DonationCopyWithImpl<$Res, Donation>;
  @useResult
  $Res call(
      {String? id,
      String title,
      String description,
      double quantity,
      Unit unit,
      FoodType foodType,
      DonationCondition condition,
      SuitableFor suitableFor,
      String donorId,
      String pickUpLocation,
      DateTime pickUpTimeStart,
      DateTime? bestBeforeDate,
      UrgencyLevel urgency,
      bool complianceVerified,
      List<String>? images,
      String? disclaimer,
      String? specialInstructions,
      DonationStatus status});
}

/// @nodoc
class _$DonationCopyWithImpl<$Res, $Val extends Donation>
    implements $DonationCopyWith<$Res> {
  _$DonationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? quantity = null,
    Object? unit = null,
    Object? foodType = null,
    Object? condition = null,
    Object? suitableFor = null,
    Object? donorId = null,
    Object? pickUpLocation = null,
    Object? pickUpTimeStart = null,
    Object? bestBeforeDate = freezed,
    Object? urgency = null,
    Object? complianceVerified = null,
    Object? images = freezed,
    Object? disclaimer = freezed,
    Object? specialInstructions = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as DonationCondition,
      suitableFor: null == suitableFor
          ? _value.suitableFor
          : suitableFor // ignore: cast_nullable_to_non_nullable
              as SuitableFor,
      donorId: null == donorId
          ? _value.donorId
          : donorId // ignore: cast_nullable_to_non_nullable
              as String,
      pickUpLocation: null == pickUpLocation
          ? _value.pickUpLocation
          : pickUpLocation // ignore: cast_nullable_to_non_nullable
              as String,
      pickUpTimeStart: null == pickUpTimeStart
          ? _value.pickUpTimeStart
          : pickUpTimeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bestBeforeDate: freezed == bestBeforeDate
          ? _value.bestBeforeDate
          : bestBeforeDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      urgency: null == urgency
          ? _value.urgency
          : urgency // ignore: cast_nullable_to_non_nullable
              as UrgencyLevel,
      complianceVerified: null == complianceVerified
          ? _value.complianceVerified
          : complianceVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      disclaimer: freezed == disclaimer
          ? _value.disclaimer
          : disclaimer // ignore: cast_nullable_to_non_nullable
              as String?,
      specialInstructions: freezed == specialInstructions
          ? _value.specialInstructions
          : specialInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DonationStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonationImplCopyWith<$Res>
    implements $DonationCopyWith<$Res> {
  factory _$$DonationImplCopyWith(
          _$DonationImpl value, $Res Function(_$DonationImpl) then) =
      __$$DonationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String title,
      String description,
      double quantity,
      Unit unit,
      FoodType foodType,
      DonationCondition condition,
      SuitableFor suitableFor,
      String donorId,
      String pickUpLocation,
      DateTime pickUpTimeStart,
      DateTime? bestBeforeDate,
      UrgencyLevel urgency,
      bool complianceVerified,
      List<String>? images,
      String? disclaimer,
      String? specialInstructions,
      DonationStatus status});
}

/// @nodoc
class __$$DonationImplCopyWithImpl<$Res>
    extends _$DonationCopyWithImpl<$Res, _$DonationImpl>
    implements _$$DonationImplCopyWith<$Res> {
  __$$DonationImplCopyWithImpl(
      _$DonationImpl _value, $Res Function(_$DonationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? quantity = null,
    Object? unit = null,
    Object? foodType = null,
    Object? condition = null,
    Object? suitableFor = null,
    Object? donorId = null,
    Object? pickUpLocation = null,
    Object? pickUpTimeStart = null,
    Object? bestBeforeDate = freezed,
    Object? urgency = null,
    Object? complianceVerified = null,
    Object? images = freezed,
    Object? disclaimer = freezed,
    Object? specialInstructions = freezed,
    Object? status = null,
  }) {
    return _then(_$DonationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as DonationCondition,
      suitableFor: null == suitableFor
          ? _value.suitableFor
          : suitableFor // ignore: cast_nullable_to_non_nullable
              as SuitableFor,
      donorId: null == donorId
          ? _value.donorId
          : donorId // ignore: cast_nullable_to_non_nullable
              as String,
      pickUpLocation: null == pickUpLocation
          ? _value.pickUpLocation
          : pickUpLocation // ignore: cast_nullable_to_non_nullable
              as String,
      pickUpTimeStart: null == pickUpTimeStart
          ? _value.pickUpTimeStart
          : pickUpTimeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bestBeforeDate: freezed == bestBeforeDate
          ? _value.bestBeforeDate
          : bestBeforeDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      urgency: null == urgency
          ? _value.urgency
          : urgency // ignore: cast_nullable_to_non_nullable
              as UrgencyLevel,
      complianceVerified: null == complianceVerified
          ? _value.complianceVerified
          : complianceVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      disclaimer: freezed == disclaimer
          ? _value.disclaimer
          : disclaimer // ignore: cast_nullable_to_non_nullable
              as String?,
      specialInstructions: freezed == specialInstructions
          ? _value.specialInstructions
          : specialInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DonationStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonationImpl implements _Donation {
  const _$DonationImpl(
      {this.id,
      required this.title,
      required this.description,
      required this.quantity,
      required this.unit,
      required this.foodType,
      required this.condition,
      required this.suitableFor,
      required this.donorId,
      required this.pickUpLocation,
      required this.pickUpTimeStart,
      this.bestBeforeDate,
      required this.urgency,
      required this.complianceVerified,
      final List<String>? images,
      this.disclaimer,
      this.specialInstructions,
      this.status = DonationStatus.available})
      : _images = images;

  factory _$DonationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonationImplFromJson(json);

  @override
  final String? id;
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
  final DonationCondition condition;
  @override
  final SuitableFor suitableFor;
  @override
  final String donorId;
  @override
  final String pickUpLocation;
  @override
  final DateTime pickUpTimeStart;
  @override
  final DateTime? bestBeforeDate;
  @override
  final UrgencyLevel urgency;
  @override
  final bool complianceVerified;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? disclaimer;
  @override
  final String? specialInstructions;
  @override
  @JsonKey()
  final DonationStatus status;

  @override
  String toString() {
    return 'Donation(id: $id, title: $title, description: $description, quantity: $quantity, unit: $unit, foodType: $foodType, condition: $condition, suitableFor: $suitableFor, donorId: $donorId, pickUpLocation: $pickUpLocation, pickUpTimeStart: $pickUpTimeStart, bestBeforeDate: $bestBeforeDate, urgency: $urgency, complianceVerified: $complianceVerified, images: $images, disclaimer: $disclaimer, specialInstructions: $specialInstructions, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.foodType, foodType) ||
                other.foodType == foodType) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.suitableFor, suitableFor) ||
                other.suitableFor == suitableFor) &&
            (identical(other.donorId, donorId) || other.donorId == donorId) &&
            (identical(other.pickUpLocation, pickUpLocation) ||
                other.pickUpLocation == pickUpLocation) &&
            (identical(other.pickUpTimeStart, pickUpTimeStart) ||
                other.pickUpTimeStart == pickUpTimeStart) &&
            (identical(other.bestBeforeDate, bestBeforeDate) ||
                other.bestBeforeDate == bestBeforeDate) &&
            (identical(other.urgency, urgency) || other.urgency == urgency) &&
            (identical(other.complianceVerified, complianceVerified) ||
                other.complianceVerified == complianceVerified) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.disclaimer, disclaimer) ||
                other.disclaimer == disclaimer) &&
            (identical(other.specialInstructions, specialInstructions) ||
                other.specialInstructions == specialInstructions) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      quantity,
      unit,
      foodType,
      condition,
      suitableFor,
      donorId,
      pickUpLocation,
      pickUpTimeStart,
      bestBeforeDate,
      urgency,
      complianceVerified,
      const DeepCollectionEquality().hash(_images),
      disclaimer,
      specialInstructions,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonationImplCopyWith<_$DonationImpl> get copyWith =>
      __$$DonationImplCopyWithImpl<_$DonationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonationImplToJson(
      this,
    );
  }
}

abstract class _Donation implements Donation {
  const factory _Donation(
      {final String? id,
      required final String title,
      required final String description,
      required final double quantity,
      required final Unit unit,
      required final FoodType foodType,
      required final DonationCondition condition,
      required final SuitableFor suitableFor,
      required final String donorId,
      required final String pickUpLocation,
      required final DateTime pickUpTimeStart,
      final DateTime? bestBeforeDate,
      required final UrgencyLevel urgency,
      required final bool complianceVerified,
      final List<String>? images,
      final String? disclaimer,
      final String? specialInstructions,
      final DonationStatus status}) = _$DonationImpl;

  factory _Donation.fromJson(Map<String, dynamic> json) =
      _$DonationImpl.fromJson;

  @override
  String? get id;
  @override
  String get title;
  @override
  String get description;
  @override
  double get quantity;
  @override
  Unit get unit;
  @override
  FoodType get foodType;
  @override
  DonationCondition get condition;
  @override
  SuitableFor get suitableFor;
  @override
  String get donorId;
  @override
  String get pickUpLocation;
  @override
  DateTime get pickUpTimeStart;
  @override
  DateTime? get bestBeforeDate;
  @override
  UrgencyLevel get urgency;
  @override
  bool get complianceVerified;
  @override
  List<String>? get images;
  @override
  String? get disclaimer;
  @override
  String? get specialInstructions;
  @override
  DonationStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$DonationImplCopyWith<_$DonationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
