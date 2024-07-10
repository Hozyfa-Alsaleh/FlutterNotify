import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotifyScreen extends StatelessWidget {
  const NotifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RemoteMessage message =
        ModalRoute.of(context)!.settings.arguments as RemoteMessage;

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Center(
            child: Icon(Icons.notifications),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Text('${message.notification?.title}'),
                Text('${message.notification?.body}'),
                Text('${message.data}'),
              ],
            ),
          ),
        ));
  }
}
