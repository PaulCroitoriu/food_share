import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_share/repositories/donation_repository/models/donation_model.dart';

class Claim {
  final String id;
  final String donationId;
  final String charityId;
  final DonationStatus status;
  final DateTime timestamp;

  Claim({
    required this.id,
    required this.donationId,
    required this.charityId,
    required this.status,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return {
      'donationId': donationId,
      'charityId': charityId,
      'status': status.toString().split('.').last,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  factory Claim.fromDocument(DocumentSnapshot doc) {
    return Claim(
      id: doc.id,
      donationId: doc['donationId'],
      charityId: doc['charityId'],
      status: DonationStatus.values.firstWhere((e) => e.toString() == 'DonationStatus.${doc['status']}'),
      timestamp: DateTime.parse(doc['timestamp']),
    );
  }
}
