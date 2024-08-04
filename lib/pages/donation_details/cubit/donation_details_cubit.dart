import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_share/repositories/donation_repository/models/donation_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'donation_details_state.dart';
part 'donation_details_cubit.freezed.dart';

class DonationDetailsCubit extends Cubit<DonationDetailsState> {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  DonationDetailsCubit({
    required FirebaseFirestore firestore,
    required FirebaseAuth auth,
  })  : _firestore = firestore,
        _auth = auth,
        super(DonationDetailsState.initial());

  void claimDonation(
    String? donationId,
  ) async {
    await _firestore.collection('donations').doc(donationId).update({'status': DonationStatus.pendingApproval.name});

    await _firestore.collection('claims').add({
      'donationId': donationId,
      'charityId': _auth.currentUser?.uid,
      'status': 'pending',
      'timestamp': DateTime.now().toIso8601String(),
    });
  }
}
