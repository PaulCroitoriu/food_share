part of 'add_donation_bloc.dart';

enum AddDonationStatus { init, loading, success, error }

@freezed
class AddDonationState with _$AddDonationState {
  const AddDonationState._();

  factory AddDonationState({
    required AddDonationStatus status,
    required double quantity,
    Unit? unit,
    FoodType? foodType,
    DonationCondition? donationCondition,
    SuitableFor? suitableFor,
    UrgencyLevel? urgencyLevel,
    DateTime? expireDate,
    dynamic error,
  }) = _AddDonationState;

  factory AddDonationState.initial() => AddDonationState(
        status: AddDonationStatus.init,
        quantity: 0.0,
      );

  bool get isLoading => status == AddDonationStatus.loading;
}
