part of 'donation_details_cubit.dart';

enum DonationDetailsStatus { intial, loading, success, error }

@freezed
class DonationDetailsState with _$DonationDetailsState {
  const factory DonationDetailsState({
    required DonationDetailsStatus status,
    dynamic error,
  }) = _DonationDetailsState;

  factory DonationDetailsState.initial() => const DonationDetailsState(status: DonationDetailsStatus.intial);
}
