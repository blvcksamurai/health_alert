import 'package:flutter/material.dart';
import 'package:health_alert/screens/onboarding/onboarding.dart';
import 'package:health_alert/utils/constants.dart';

void main() {
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
        colorScheme: ColorScheme.fromSeed(seedColor: Constants.lightGreen),
        useMaterial3: true,
        fontFamily: 'Raleway',
      ),
      home: const Onboarding(),
    );
  }
}
