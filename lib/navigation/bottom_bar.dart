import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_alert/screens/landing_screen.dart';
import 'package:health_alert/screens/notifications_screen.dart';
import 'package:health_alert/screens/settings.dart';
import 'package:health_alert/utils/constants.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    LandingScreen(
      email: '',
    ),
    NotificationsScreen(),
    SettingsScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    }); // print('Tapeped index is ${_selectedIndex}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Constants.bgDark,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 0,
          showSelectedLabels: true,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(
            color: Colors.black,
          ),
          selectedLabelStyle:
              TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/icons/dashboard.png'),
                height: 30,
              ),
              activeIcon: Image(
                image: AssetImage('assets/images/icons/dashboard_active.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/icons/bell.png'),
                height: 30,
              ),
              activeIcon: Image(
                image: AssetImage('assets/images/icons/bell_active.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/icons/setting.png'),
                height: 30,
              ),
              activeIcon: Image(
                image: AssetImage('assets/images/icons/setting_active.png'),
              ),
              label: '',
            ),
          ]),
    );
  }
}
