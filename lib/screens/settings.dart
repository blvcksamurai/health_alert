import 'package:flutter/material.dart';
import 'package:health_alert/utils/constants.dart';

import '../widgets/SettingOption.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgDark,
      body: SafeArea(
        child: Container(
          height: 1000,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 65),
              Text(
                'Settings',
                style: TextStyle(
                  color: Color(0xFF36F5D3),
                  fontSize: 24,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SettingOption(
                prefixIcon: 'assets/images/icons/person.png',
                title: 'Account',
              ),
              SettingOption(
                prefixIcon: 'assets/images/icons/bell_i.png',
                title: 'Notification Settings',
              ),
              SettingOption(
                prefixIcon: 'assets/images/icons/security.png',
                title: 'Privacy and Security',
              ),
              SettingOption(
                prefixIcon: 'assets/images/icons/volume.png',
                title: 'Feedback and Contact Us',
              ),
              SettingOption(
                prefixIcon: 'assets/images/icons/help.png',
                title: 'Help',
              ),
              SettingOption(
                prefixIcon: 'assets/images/icons/globe.png',
                title: 'Sign Out',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
