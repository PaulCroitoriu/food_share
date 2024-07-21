part of 'add_donation_bloc.dart';

@freezed
class AddDonationEvent with _$AddDonationEvent {
  const factory AddDonationEvent.started() = _Started;
}
