part of 'donations_bloc.dart';

enum DonationsStatus { initial, loading, success, error, loaded }

@freezed
class DonationsState with _$DonationsState {
  const factory DonationsState({
    required DonationsStatus status,
    required List<Donation> donations,
    dynamic error,
  }) = _DonationsState;

  factory DonationsState.initial() => const DonationsState(
        status: DonationsStatus.initial,
        donations: [],
      );
}
