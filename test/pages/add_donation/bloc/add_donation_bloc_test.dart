// ignore_for_file: subtype_of_sealed_class

import 'dart:io';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_share/pages/add_donation/bloc/add_donation_bloc.dart';
import 'package:mocktail/mocktail.dart';

import 'package:food_share/repositories/donation_repository/models/donation_model.dart';
import 'package:food_share/services/storage_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// Mock classes
class MockStorageService extends Mock implements StorageService {}

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}

class MockCollectionReference extends Mock implements CollectionReference<Map<String, dynamic>> {}

class MockDocumentReference extends Mock implements DocumentReference<Map<String, dynamic>> {}

class MockUser extends Mock implements User {}

void main() {
  setUpAll(() {
    registerFallbackValue(File('path/to/fake/file'));
  });

  group('AddDonationBloc', () {
    late AddDonationBloc addDonationBloc;
    late MockStorageService mockStorageService;
    late MockFirebaseAuth mockFirebaseAuth;
    late MockFirebaseFirestore mockFirestore;
    late MockCollectionReference mockCollectionReference;
    late MockDocumentReference mockDocumentReference;
    late MockUser mockUser;

    setUp(() {
      mockStorageService = MockStorageService();
      mockFirebaseAuth = MockFirebaseAuth();
      mockFirestore = MockFirebaseFirestore();
      mockCollectionReference = MockCollectionReference();
      mockDocumentReference = MockDocumentReference();
      mockUser = MockUser();

      // Set up the mock user
      when(() => mockUser.uid).thenReturn('test_user_id');
      when(() => mockFirebaseAuth.currentUser).thenReturn(mockUser);

      // Set up Firestore mocks
      when(() => mockFirestore.collection('donations')).thenReturn(mockCollectionReference);
      when(() => mockCollectionReference.add(any())).thenAnswer(
        (_) async => mockDocumentReference,
      );

      addDonationBloc = AddDonationBloc(
        storageService: mockStorageService,
        firestore: mockFirestore,
        auth: mockFirebaseAuth,
      );
    });

    tearDown(() {
      addDonationBloc.close();
    });

    blocTest<AddDonationBloc, AddDonationState>(
      'emits [loading, success] when donation is posted successfully',
      build: () {
        when(() => mockStorageService.uploadImage(any())).thenAnswer(
          (invocation) async {
            final argument = invocation.positionalArguments[0];
            if (argument is File) {
              return 'http://fakeimageurl.com';
            }
            throw ArgumentError('Expected a File argument');
          },
        );
        return addDonationBloc;
      },
      act: (bloc) => bloc.add(AddDonationEvent.postDonation(
        title: 'Test Donation',
        description: 'Test Description',
        quantity: 1,
        unit: Unit.kg,
        foodType: FoodType.perishable,
        donationCondition: DonationCondition.fresh,
        suitableFor: SuitableFor.families,
        images: [File('path/to/image')],
        expireDate: DateTime.now(),
        urgencyLevel: UrgencyLevel.high,
      )),
      expect: () => [
        isA<AddDonationState>().having((state) => state.status, 'status', AddDonationStatus.loading),
        isA<AddDonationState>().having((state) => state.status, 'status', AddDonationStatus.success),
      ],
    );

    blocTest<AddDonationBloc, AddDonationState>(
      'emits [loading, error] when there is an error posting the donation',
      build: () {
        when(() => mockStorageService.uploadImage(any())).thenThrow(Exception('Upload error'));
        return addDonationBloc;
      },
      act: (bloc) => bloc.add(AddDonationEvent.postDonation(
        title: 'Test Donation',
        description: 'Test Description',
        quantity: 1,
        unit: Unit.kg,
        foodType: FoodType.perishable,
        donationCondition: DonationCondition.fresh,
        suitableFor: SuitableFor.families,
        images: [File('path/to/image')],
        expireDate: DateTime.now(),
        urgencyLevel: UrgencyLevel.high,
      )),
      expect: () => [
        isA<AddDonationState>().having((state) => state.status, 'status', AddDonationStatus.loading),
        isA<AddDonationState>()
            .having((state) => state.status, 'status', AddDonationStatus.error)
            .having((state) => state.error.toString(), 'error', 'Exception: Upload error'),
      ],
    );
  });
}
