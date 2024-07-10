import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notify/firebase_api.dart';
import 'package:notify/firebase_options.dart';
import 'package:notify/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:notify/notifyscreen.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FireBaseApi().initNotify();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
      // getPages: [GetPage(name: "/notify", page: () => const NotifyScreen())],
      routes: {
        '/notify': (context) => const NotifyScreen(),
      },
    );
  }
}
// plugins {
//   // ...

//   // Add the dependency for the Google services Gradle plugin
//   id 'com.google.gms.google-services' version '4.4.2' apply false

// }