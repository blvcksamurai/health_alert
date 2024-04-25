// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:health_alert/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  'Welcome Back',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Constants.lightGreen,
                    fontSize: 20,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF36F5D3),
                    fontSize: 32,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                    height: 250,
                    width: 250,
                    child: Image(
                        image: AssetImage('assets/images/png/saver.png'))),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
