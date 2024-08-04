import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_share/utils/typedef.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class Notification with _$Notification {
  const factory Notification({
    required String id,
    required String title,
    required String body,
    required DateTime timestamp,
    required bool read,
  }) = _Notification;

  factory Notification.fromJson(JSON json) => _$NotificationFromJson(json);

  factory Notification.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Notification(
      id: doc.id,
      title: data['title'] ?? '',
      body: data['body'] ?? '',
      timestamp: (data['timestamp'] as Timestamp).toDate(),
      read: data['read'] ?? false,
    );
  }
}
