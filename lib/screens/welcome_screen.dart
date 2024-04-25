// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:health_alert/screens/home_screen.dart';
import 'package:health_alert/utils/constants.dart';

import '../widgets/CustomButton.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgDark,
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 80),
                  Text(
                    'Welcome to',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Constants.lightGreen,
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Health Alert',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF36F5D3),
                      fontSize: 32,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 30),
                  Image(image: AssetImage('assets/images/png/saver.png')),
                  SizedBox(height: 40),
                  Container(
                    height: 42,
                    margin: EdgeInsets.all(40),
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      color: Color(0xFF36F5D3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => HomeScreen()));
                        },
                        child: CustomButton(
                          text: 'Get Started',
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
