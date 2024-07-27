part of 'donations_bloc.dart';

@freezed
class DonationsEvent with _$DonationsEvent {
  const factory DonationsEvent.getDonations() = _GetDonations;
  const factory DonationsEvent.donationsUpdated(List<Donation> donations) = _DonationsUpdated;
}
