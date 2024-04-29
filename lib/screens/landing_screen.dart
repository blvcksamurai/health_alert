import 'package:flutter/material.dart';
import 'package:health_alert/features/med_history/medical_history.dart';
import 'package:health_alert/utils/constants.dart';

import '../widgets/DashBoardMenu.dart';

class LandingScreen extends StatefulWidget {
  String email;

  LandingScreen({required this.email, super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '👋🏻 ',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'Hello Admin!',
                          style: TextStyle(
                            color: Color(0xFF36F5D3),
                            fontSize: 24,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size.width * 0.30),
                    width: 46,
                    height: 46,
                    padding: const EdgeInsets.all(8),
                    decoration: ShapeDecoration(
                      color: Color(0xFFEDEBF3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          child: Image(
                            image: AssetImage('assets/images/png/med.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              DashboardMenu(
                route: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MedicalHistory()));
                },
                title: 'Medical History',
                img: 'assets/images/png/med.png',
              ),
              DashboardMenu(
                route: () {},
                title: 'Personal Health \nVitals',
                img: 'assets/images/png/scope.png',
              ),
              DashboardMenu(
                route: () {},
                title: 'Medicine Dossages',
                img: 'assets/images/png/iv.png',
              ),
              DashboardMenu(
                route: () {},
                title: 'Talk to a Doctor \nOnline',
                img: 'assets/images/png/bust.png',
              ),
              DashboardMenu(
                route: () {},
                title: 'Your Diet Chart',
                img: 'assets/images/png/gut.png',
              ),
              DashboardMenu(
                route: () {},
                title: 'Your Diet Chart',
                img: 'assets/images/png/gut.png',
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      )),
    );
  }
}
