import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_share/repositories/donation_repository/models/donation_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'donations_event.dart';
part 'donations_state.dart';
part 'donations_bloc.freezed.dart';

class DonationsBloc extends Bloc<DonationsEvent, DonationsState> {
  final FirebaseAuth auth;
  StreamSubscription<List<Donation>>? _donationSubscription;

  DonationsBloc({required this.auth}) : super(DonationsState.initial()) {
    on<_GetDonations>((event, emit) async {
      emit(state.copyWith(status: DonationsStatus.loading));
      await _donationSubscription?.cancel();

      try {
        final userId = auth.currentUser!.uid;

        _donationSubscription = FirebaseFirestore.instance
            .collection('donations')
            .where('donorId', isEqualTo: userId)
            .orderBy('pickUpTimeStart', descending: true)
            .snapshots()
            .map((snapshot) {
          return snapshot.docs.map((doc) {
            return Donation.fromJson(doc.data()).copyWith(id: doc.id);
          }).toList();
        }).listen(
          (donations) => add(DonationsEvent.donationsUpdated(donations)),
          onError: (error) => throw error,
        );
      } catch (e) {
        emit(state.copyWith(status: DonationsStatus.error, error: e));
      }
    });

    on<_DonationsUpdated>((event, emit) => emit(state.copyWith(donations: event.donations, status: DonationsStatus.loaded)));
  }

  @override
  Future<void> close() {
    _donationSubscription?.cancel();
    return super.close();
  }
}
