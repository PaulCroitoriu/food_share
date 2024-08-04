import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_share/pages/register/bloc/register_bloc.dart';
import 'package:food_share/repositories/donation_repository/models/donation_model.dart';
import 'package:food_share/repositories/user_repository/models/user_model.dart';
import 'package:food_share/repositories/user_repository/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'donations_event.dart';
part 'donations_state.dart';
part 'donations_bloc.freezed.dart';

class DonationsBloc extends Bloc<DonationsEvent, DonationsState> {
  final FirebaseAuth auth;
  final UserRepository _userRepository;

  StreamSubscription<List<Donation>>? _donationSubscription;

  DonationsBloc({required this.auth, required UserRepository userRepository})
      : _userRepository = userRepository,
        super(DonationsState.initial()) {
    on<_GetDonations>((event, emit) async {
      emit(state.copyWith(status: DonationsStatus.loading));
      await _donationSubscription?.cancel();

      try {
        final user = auth.currentUser!;

        if (_userRepository.user?.userType == UserType.donor) {
          _donationSubscription = FirebaseFirestore.instance
              .collection('donations')
              .where('donorId', isEqualTo: user.uid)
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
        } else {
          _donationSubscription =
              FirebaseFirestore.instance.collection('donations').orderBy('pickUpTimeStart', descending: true).snapshots().asyncMap((snapshot) async {
            final donations = await Future.wait(snapshot.docs.map((doc) async {
              final donation = Donation.fromJson(doc.data()).copyWith(id: doc.id);
              final user = await fetchUserByDonorId(donation.donorId);

              return donation.copyWith(user: user);
            }));

            return donations;
          }).listen(
            (donations) => add(DonationsEvent.donationsUpdated(donations)),
            onError: (error) => throw error,
          );
        }
      } catch (e) {
        emit(state.copyWith(status: DonationsStatus.error, error: e));
      }
    });

    on<_DonationsUpdated>((event, emit) => emit(state.copyWith(donations: event.donations, status: DonationsStatus.loaded)));
  }

  Future<UserModel?> fetchUserByDonorId(String donorId) async {
    final userDoc = await FirebaseFirestore.instance.collection('users').doc(donorId).get();

    if (userDoc.exists) {
      return UserModel.fromJson(userDoc.data()!);
    }
    return null;
  }

  @override
  Future<void> close() {
    _donationSubscription?.cancel();
    return super.close();
  }
}
