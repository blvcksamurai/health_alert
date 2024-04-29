import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_alert/utils/constants.dart';

import '../widgets/NotificationTile.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.bgDark,
        body: SafeArea(
          child: Container(
            height: 1000,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Expanded(
                child: ListView(
              children: [
                SizedBox(height: 65),
                Text(
                  'Notifications',
                  style: TextStyle(
                    color: Color(0xFF36F5D3),
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20),
                NotificationTile(),
                NotificationTile(),
                NotificationTile(),
                NotificationTile(),
                NotificationTile(),
                NotificationTile(),
              ],
            )),
          ),
        ));
  }
}
