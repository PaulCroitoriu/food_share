part of 'add_donation_bloc.dart';

enum AddDonationStatus { init, loading, success, error }

@freezed
class AddDonationState with _$AddDonationState {
  const AddDonationState._();

  factory AddDonationState({
    required AddDonationStatus status,
    dynamic error,
  }) = _AddDonationState;

  factory AddDonationState.initial() => AddDonationState(status: AddDonationStatus.init);

  bool get isLoading => status == AddDonationStatus.loading;
}
