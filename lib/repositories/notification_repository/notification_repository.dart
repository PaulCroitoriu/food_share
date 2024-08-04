import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_share/repositories/notification_repository/models/notification_model.dart';

class NotificationRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Notification>> fetchNotifications(String userId) async {
    QuerySnapshot snapshot =
        await _firestore.collection('notifications').where('userId', isEqualTo: userId).orderBy('timestamp', descending: true).get();

    return snapshot.docs.map((doc) => Notification.fromFirestore(doc)).toList();
  }

  Future<void> markAsRead(String notificationId) async {
    await _firestore.collection('notifications').doc(notificationId).update({'read': true});
  }
}
