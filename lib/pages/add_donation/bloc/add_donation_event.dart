part of 'add_donation_bloc.dart';

@freezed
class AddDonationEvent with _$AddDonationEvent {
  const factory AddDonationEvent.started() = _Started;
  const factory AddDonationEvent.postDonation({
    required String title,
    required String description,
    required double quantity,
    required Unit unit,
    required FoodType foodType,
    required DonationCondition donationCondition,
    required SuitableFor suitableFor,
    required UrgencyLevel urgencyLevel,
    DateTime? expireDate,
    @Default([]) List<File> images,
  }) = _PostDonation;
}
