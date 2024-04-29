// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:health_alert/features/med_history/medical_history.dart';
import 'package:health_alert/screens/onboarding/onboarding.dart';
import 'package:health_alert/utils/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'apiKey',
          appId: '1:638715048044:android:6cc1dee83af8ebe764e849',
          messagingSenderId: 'messagingSenderId',
          projectId: 'healthalert-flutter'));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Alert',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: Constants.lightGreen,
        colorScheme: ColorScheme.fromSeed(seedColor: Constants.lightGreen),
        useMaterial3: true,
        fontFamily: 'Raleway',
      ),
      home: Onboarding(),
    );
  }
}
