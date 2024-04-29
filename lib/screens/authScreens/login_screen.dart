// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:health_alert/screens/authScreens/sign_up.dart';
import 'package:health_alert/utils/constants.dart';

import '../../navigation/bottom_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgDark,
      body: Center(
        child: SingleChildScrollView(
          child: Expanded(
              child: Column(
            children: [
              SizedBox(height: 50),
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
                  child:
                      Image(image: AssetImage('assets/images/png/saver.png'))),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        //Email Field
                        TextFormField(
                          style: TextStyle(
                            color: Color(0xFF36F5D3),
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                          ),
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            bool emailValid = RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value!);
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            } else if (!emailValid) {
                              return "Enter Valid Email";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(
                                color: Color(0xFF36F5D3),
                                fontSize: 16,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                              ),
                              border: OutlineInputBorder(),
                              suffixIcon: Icon(Icons.email_outlined)),
                        ),
                        SizedBox(height: 20),
                        //PasswordField
                        TextFormField(
                          style: TextStyle(
                            color: Color(0xFF36F5D3),
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                          ),
                          controller: passwordController,
                          obscureText: passToggle,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            } else if (passwordController.text.length < 6) {
                              return "Password length should be more than 6 characters";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: Color(0xFF36F5D3),
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                            ),
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    passToggle = !passToggle;
                                  });
                                },
                                icon: Icon(passToggle
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password?',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF36F5D3),
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            // if (_formKey.currentState!.validate()) {
                            //   // Navigate the user to the Home page
                            // } else {
                            //   ScaffoldMessenger.of(context).showSnackBar(
                            //     const SnackBar(
                            //         content: Text('Please fill input')),
                            //   );
                            // }
                            if (emailController.text == "admin@nox.com" &&
                                passwordController.text == "admin1234") {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CustomBottomNavBar(),
                                ),
                              );
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => LandingScreen(
                              //             email: emailController.text,
                              //           )),
                              // );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Invalid Credentials')),
                              );
                            }
                          },
                          child: Container(
                            height: 42,
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            width: double.infinity,
                            decoration: ShapeDecoration(
                              color: Color(0xFF36F5D3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            child: Center(
                              child: Text(
                                'Login',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Don’t have an account?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpScreen()),
                                );
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Color(0xFF36F5D3),
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
