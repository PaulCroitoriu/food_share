import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Notifications'), // kTranslate
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Today', style: Theme.of(context).textTheme.titleMedium), // kTranslate
                  Column(
                    children: [
                      ListTile(
                        onTap: () {},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                        tileColor: Colors.blueGrey.withOpacity(0.2),
                        leading: const Icon(Icons.notification_important_outlined),
                        title: const Text('This is the title'),
                        subtitle: const Text('this is the subtitle'),
                        trailing: const Text('16h'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
