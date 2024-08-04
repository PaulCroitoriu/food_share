// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonationImpl _$$DonationImplFromJson(Map<String, dynamic> json) =>
    _$DonationImpl(
      id: json['id'] as String?,
      title: json['title'] as String,
      description: json['description'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      unit: $enumDecode(_$UnitEnumMap, json['unit']),
      foodType: $enumDecode(_$FoodTypeEnumMap, json['foodType']),
      condition: $enumDecode(_$DonationConditionEnumMap, json['condition']),
      suitableFor: $enumDecode(_$SuitableForEnumMap, json['suitableFor']),
      donorId: json['donorId'] as String,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      pickUpLocation: json['pickUpLocation'] as String,
      pickUpTimeStart: DateTime.parse(json['pickUpTimeStart'] as String),
      bestBeforeDate: json['bestBeforeDate'] == null
          ? null
          : DateTime.parse(json['bestBeforeDate'] as String),
      urgency: $enumDecode(_$UrgencyLevelEnumMap, json['urgency']),
      complianceVerified: json['complianceVerified'] as bool,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      disclaimer: json['disclaimer'] as String?,
      specialInstructions: json['specialInstructions'] as String?,
      status: $enumDecodeNullable(_$DonationStatusEnumMap, json['status']) ??
          DonationStatus.available,
    );

Map<String, dynamic> _$$DonationImplToJson(_$DonationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'quantity': instance.quantity,
      'unit': _$UnitEnumMap[instance.unit]!,
      'foodType': _$FoodTypeEnumMap[instance.foodType]!,
      'condition': _$DonationConditionEnumMap[instance.condition]!,
      'suitableFor': _$SuitableForEnumMap[instance.suitableFor]!,
      'donorId': instance.donorId,
      'user': instance.user,
      'pickUpLocation': instance.pickUpLocation,
      'pickUpTimeStart': instance.pickUpTimeStart.toIso8601String(),
      'bestBeforeDate': instance.bestBeforeDate?.toIso8601String(),
      'urgency': _$UrgencyLevelEnumMap[instance.urgency]!,
      'complianceVerified': instance.complianceVerified,
      'images': instance.images,
      'disclaimer': instance.disclaimer,
      'specialInstructions': instance.specialInstructions,
      'status': _$DonationStatusEnumMap[instance.status]!,
    };

const _$UnitEnumMap = {
  Unit.kg: 'kg',
  Unit.lb: 'lb',
  Unit.g: 'g',
  Unit.pcs: 'pcs',
};

const _$FoodTypeEnumMap = {
  FoodType.perishable: 'perishable',
  FoodType.nonPerishable: 'nonPerishable',
  FoodType.prepared: 'prepared',
  FoodType.unprepared: 'unprepared',
  FoodType.bakedGoods: 'bakedGoods',
};

const _$DonationConditionEnumMap = {
  DonationCondition.fresh: 'fresh',
  DonationCondition.frozen: 'frozen',
  DonationCondition.preserved: 'preserved',
};

const _$SuitableForEnumMap = {
  SuitableFor.individuals: 'individuals',
  SuitableFor.families: 'families',
  SuitableFor.largeGroups: 'largeGroups',
  SuitableFor.children: 'children',
  SuitableFor.elderly: 'elderly',
};

const _$UrgencyLevelEnumMap = {
  UrgencyLevel.low: 'low',
  UrgencyLevel.medium: 'medium',
  UrgencyLevel.high: 'high',
};

const _$DonationStatusEnumMap = {
  DonationStatus.available: 'available',
  DonationStatus.pendingApproval: 'pendingApproval',
  DonationStatus.claimed: 'claimed',
  DonationStatus.completed: 'completed',
  DonationStatus.rejected: 'rejected',
  DonationStatus.expired: 'expired',
  DonationStatus.cancelled: 'cancelled',
};
