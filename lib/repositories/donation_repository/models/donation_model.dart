import 'package:food_share/repositories/user_repository/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'donation_model.freezed.dart';
part 'donation_model.g.dart';

@freezed
class Donation with _$Donation {
  const factory Donation({
    String? id,
    required String title,
    required String description,
    required double quantity,
    required Unit unit,
    required FoodType foodType,
    required DonationCondition condition,
    required SuitableFor suitableFor,
    required String donorId,
    UserModel? user,
    required String pickUpLocation,
    required DateTime pickUpTimeStart,
    DateTime? bestBeforeDate,
    required UrgencyLevel urgency,
    required bool complianceVerified,
    List<String>? images,
    String? disclaimer,
    String? specialInstructions,
    @Default(DonationStatus.available) DonationStatus status,
  }) = _Donation;

  factory Donation.fromJson(Map<String, Object?> json) => _$DonationFromJson(json);
}

enum Unit {
  @JsonValue('kg')
  kg,
  @JsonValue('lb')
  lb,
  @JsonValue('g')
  g,
  @JsonValue('pcs')
  pcs,
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

enum DonationStatus {
  @JsonValue('available')
  available,

  @JsonValue('pendingApproval')
  pendingApproval,

  @JsonValue('claimed')
  claimed,

  @JsonValue('completed')
  completed,

  @JsonValue('rejected')
  rejected,

  @JsonValue('expired')
  expired,

  @JsonValue('cancelled')
  cancelled,
}
