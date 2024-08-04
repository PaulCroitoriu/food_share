import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_share/repositories/notification_repository/models/notification_model.dart';
import 'package:food_share/repositories/notification_repository/notification_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';
part 'notifications_bloc.freezed.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final NotificationRepository _notificationRepository;

  NotificationsBloc({required NotificationRepository notificationRepository})
      : _notificationRepository = notificationRepository,
        super(NotificationsState.initial()) {
    on<_GetNotifications>((event, emit) async {
      emit(state.copyWith(status: NotificationsStatus.loading));

      try {
        final notifications = await _notificationRepository.fetchNotifications(event.userId);
        final groupedNotifications = _groupNotifications(notifications);

        emit(state.copyWith(
          status: NotificationsStatus.success,
          notifications: notifications,
          groupedNotifications: groupedNotifications,
        ));
      } catch (e) {
        emit(state.copyWith(status: NotificationsStatus.error, error: e));
      }
    });

    on<_ReadNotification>((event, emit) async {
      try {
        await _notificationRepository.markAsRead(event.id);
        final updatedNotifications = state.notifications.map((n) {
          if (n.id == event.id) {
            return n.copyWith(read: true);
          }
          return n;
        }).toList();
        final groupedNotifications = _groupNotifications(updatedNotifications);
        emit(state.copyWith(notifications: updatedNotifications, groupedNotifications: groupedNotifications));
      } catch (e) {
        emit(state.copyWith(status: NotificationsStatus.error, error: e));
      }
    });
  }

  Map<String, List<Notification>> _groupNotifications(List<Notification> notifications) {
    final now = DateTime.now();
    final Map<String, List<Notification>> groupedNotifications = {
      'today': [],
      'yesterday': [],
      'last30Days': [],
      'others': [],
    };

    for (var notification in notifications) {
      final difference = now.difference(notification.timestamp);
      if (difference.inDays == 0) {
        groupedNotifications['today']!.add(notification);
      } else if (difference.inDays == 1) {
        groupedNotifications['yesterday']!.add(notification);
      } else if (difference.inDays <= 30) {
        groupedNotifications['last30Days']!.add(notification);
      } else {
        groupedNotifications['others']!.add(notification);
      }
    }

    return groupedNotifications;
  }
}
