import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_share/data/instances.dart';
import 'package:food_share/pages/notifications/bloc/notifications_bloc.dart';
import 'package:food_share/repositories/notification_repository/notification_repository.dart';
import 'package:food_share/router.gr.dart';
import 'package:food_share/utils/utils.dart';
import 'package:timeago/timeago.dart' as timeago;

@RoutePage()
class NotificationsPage extends StatefulWidget implements AutoRouteWrapper {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<NotificationsBloc>(
      create: (context) => NotificationsBloc(notificationRepository: context.read<NotificationRepository>())
        ..add(NotificationsEvent.getNotifications(auth.currentUser?.uid ?? '')),
      child: this,
    );
  }
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NotificationsBloc, NotificationsState>(
      listener: (context, state) {
        if (state.status == NotificationsStatus.error) {
          showError(context: context, message: state.error.toString());
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: const Text('Notifications'), // kTranslate
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RefreshIndicator.adaptive(
              onRefresh: () async {
                context.read<NotificationsBloc>().add(NotificationsEvent.getNotifications(auth.currentUser?.uid ?? ''));
              },
              child: ListView.builder(
                itemCount: state.groupedNotifications.length,
                itemBuilder: (context, index) {
                  final sectionTitle = state.groupedNotifications.keys.elementAt(index);
                  final notifications = state.groupedNotifications[sectionTitle]!;

                  if (notifications.isEmpty) {
                    return const SizedBox.shrink(); // Skip empty sections
                  }

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                      Text(sectionTitle, style: Theme.of(context).textTheme.titleMedium), // kTranslate
                      ...notifications
                          .map(
                            (n) => Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: ListTile(
                                onTap: () {
                                  context.read<NotificationsBloc>().add(NotificationsEvent.readNotification(n.id));
                                  context.router.navigate(const DonationsRoute());
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                tileColor: n.read ? Colors.grey.withOpacity(0.2) : Colors.blueGrey.withOpacity(0.2),
                                leading: Icon(
                                  Icons.notification_important_outlined,
                                  color: n.read ? Colors.grey : Colors.red,
                                ),
                                title: Text(
                                  n.title,
                                  style: TextStyle(fontWeight: n.read ? FontWeight.normal : FontWeight.bold),
                                ),
                                subtitle: Text(n.body),
                                trailing: Text(timeago.format(n.timestamp).toString()),
                              ),
                            ),
                          )
                          .toList(),
                    ]),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
