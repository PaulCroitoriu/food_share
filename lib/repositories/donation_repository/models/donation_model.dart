import 'package:freezed_annotation/freezed_annotation.dart';

part 'donation_model.freezed.dart';
part 'donation_model.g.dart';

@freezed
class Donation with _$Donation {
  const factory Donation({
    required String title,
    required String description,
    required double quantity,
    required String unit,
    required DonationCondition condition,
    required FoodType foodType,
    required List<SuitableFor> suitableFor,
    required String donorId,
    required String contactInfo,
    required String pickUpLocation,
    required String locationType,
    required DateTime pickUpTimeStart,
    required DateTime pickUpTimeEnd,
    required DateTime bestBeforeDate,
    required UrgencyLevel urgency,
    required bool complianceVerified,
    List<String>? images,
    String? disclaimer,
    String? specialInstructions,
  }) = _Donation;

  factory Donation.fromJson(Map<String, Object?> json) => _$DonationFromJson(json);
}

enum DonationCondition {
  @JsonValue('fresh')
  fresh,
  @JsonValue('frozen')
  frozen,
  @JsonValue('preserved')
  preserved,
}

enum FoodType {
  @JsonValue('perishable')
  perishable,
  @JsonValue('nonPerishable')
  nonPerishable,
  @JsonValue('prepared')
  prepared,
  @JsonValue('unprepared')
  unprepared,
  @JsonValue('bakedGoods')
  bakedGoods,
}

enum UrgencyLevel {
  @JsonValue('low')
  low,
  @JsonValue('medium')
  medium,
  @JsonValue('high')
  high,
}

enum SuitableFor {
  @JsonValue('individuals')
  individuals,
  @JsonValue('families')
  families,
  @JsonValue('largeGroups')
  largeGroups,
  @JsonValue('children')
  children,
  @JsonValue('elderly')
  elderly,
}
