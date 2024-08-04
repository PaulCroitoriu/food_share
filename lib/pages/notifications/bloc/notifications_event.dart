part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.getNotifications(String userId) = _GetNotifications;
  const factory NotificationsEvent.readNotification(String id) = _ReadNotification;
}
