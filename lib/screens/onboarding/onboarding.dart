// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_alert/data/onboarding_model.dart';
import 'package:health_alert/screens/onboarding/welcome_screen.dart';
import 'package:health_alert/utils/constants.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.bgDark,
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        SizedBox(height: 30),
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
                        SvgPicture.asset(
                          contents[i].image,
                          height: 300,
                        ),
                        Text(
                          contents[i].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Constants.lightGreen,
                            fontSize: 32,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          contents[i].description,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF859E9B),
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    contents.length, (index) => buildDots(index, context)),
              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.all(40),
              width: 100,
              child: TextButton(
                child: Text(
                  currentIndex == contents.length - 1 ? 'Continue' : ' ',
                  style: TextStyle(
                    color: Color(0xFF36F5D3),
                    fontSize: 14,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                    {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => WelcomeScreen()));
                    }
                    _controller?.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn);
                  }
                },
              ),
            )
          ],
        ));
  }

  Container buildDots(int index, BuildContext context) {
    return Container(
      height: 5,
      width: currentIndex == index ? 15 : 5,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Constants.lightGreen),
    );
  }
}
