// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonationImpl _$$DonationImplFromJson(Map<String, dynamic> json) =>
    _$DonationImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      unit: json['unit'] as String,
      condition: $enumDecode(_$DonationConditionEnumMap, json['condition']),
      foodType: $enumDecode(_$FoodTypeEnumMap, json['foodType']),
      suitableFor: (json['suitableFor'] as List<dynamic>)
          .map((e) => $enumDecode(_$SuitableForEnumMap, e))
          .toList(),
      donorId: json['donorId'] as String,
      contactInfo: json['contactInfo'] as String,
      pickUpLocation: json['pickUpLocation'] as String,
      locationType: json['locationType'] as String,
      pickUpTimeStart: DateTime.parse(json['pickUpTimeStart'] as String),
      pickUpTimeEnd: DateTime.parse(json['pickUpTimeEnd'] as String),
      bestBeforeDate: DateTime.parse(json['bestBeforeDate'] as String),
      urgency: $enumDecode(_$UrgencyLevelEnumMap, json['urgency']),
      complianceVerified: json['complianceVerified'] as bool,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      disclaimer: json['disclaimer'] as String?,
      specialInstructions: json['specialInstructions'] as String?,
    );

Map<String, dynamic> _$$DonationImplToJson(_$DonationImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'condition': _$DonationConditionEnumMap[instance.condition]!,
      'foodType': _$FoodTypeEnumMap[instance.foodType]!,
      'suitableFor':
          instance.suitableFor.map((e) => _$SuitableForEnumMap[e]!).toList(),
      'donorId': instance.donorId,
      'contactInfo': instance.contactInfo,
      'pickUpLocation': instance.pickUpLocation,
      'locationType': instance.locationType,
      'pickUpTimeStart': instance.pickUpTimeStart.toIso8601String(),
      'pickUpTimeEnd': instance.pickUpTimeEnd.toIso8601String(),
      'bestBeforeDate': instance.bestBeforeDate.toIso8601String(),
      'urgency': _$UrgencyLevelEnumMap[instance.urgency]!,
      'complianceVerified': instance.complianceVerified,
      'images': instance.images,
      'disclaimer': instance.disclaimer,
      'specialInstructions': instance.specialInstructions,
    };

const _$DonationConditionEnumMap = {
  DonationCondition.fresh: 'fresh',
  DonationCondition.frozen: 'frozen',
  DonationCondition.preserved: 'preserved',
};

const _$FoodTypeEnumMap = {
  FoodType.perishable: 'perishable',
  FoodType.nonPerishable: 'nonPerishable',
  FoodType.prepared: 'prepared',
  FoodType.unprepared: 'unprepared',
  FoodType.bakedGoods: 'bakedGoods',
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
