part of 'notifications_bloc.dart';

enum NotificationsStatus { initial, loading, success, error }

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    required NotificationsStatus status,
    required List<Notification> notifications,
    required Map<String, List<Notification>> groupedNotifications,
    dynamic error,
  }) = _NotificationsState;

  factory NotificationsState.initial() => const NotificationsState(
        status: NotificationsStatus.initial,
        notifications: [],
        groupedNotifications: {
          'today': [],
          'yesterday': [],
          'last30Days': [],
          'others': [],
        },
      );
}
