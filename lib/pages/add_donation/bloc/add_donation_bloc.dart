import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_share/repositories/donation_repository/models/donation_model.dart';
import 'package:food_share/services/storage_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_donation_event.dart';
part 'add_donation_state.dart';
part 'add_donation_bloc.freezed.dart';

class AddDonationBloc extends Bloc<AddDonationEvent, AddDonationState> {
  final StorageService _storageService;
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  AddDonationBloc({
    required StorageService storageService,
    required FirebaseFirestore firestore,
    required FirebaseAuth auth,
  })  : _storageService = storageService,
        _firestore = firestore,
        _auth = auth,
        super(AddDonationState.initial()) {
    on<AddDonationEvent>((event, emit) {});

    on<_PostDonation>((event, emit) async {
      emit(state.copyWith(status: AddDonationStatus.loading));

      List<String> imageUrls = [];

      final donation = Donation(
        title: event.title,
        description: event.description,
        quantity: event.quantity,
        unit: event.unit,
        foodType: event.foodType,
        condition: event.donationCondition,
        suitableFor: event.suitableFor,
        donorId: _auth.currentUser!.uid,
        pickUpLocation: "pickUpLocation",
        bestBeforeDate: event.expireDate,
        urgency: event.urgencyLevel,
        complianceVerified: true,
        images: imageUrls,
        pickUpTimeStart: DateTime.now(),
        status: DonationStatus.available,
      );

      try {
        for (File image in event.images) {
          String imageUrl = await _storageService.uploadImage(image);
          imageUrls.add(imageUrl);
        }
        await _firestore.collection('donations').add(donation.toJson());
        emit(state.copyWith(status: AddDonationStatus.success));
      } catch (e) {
        emit(state.copyWith(status: AddDonationStatus.error, error: e));
      }
    });
  }
}
