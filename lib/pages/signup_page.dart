// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup_ui_flutter/widgets/all_widgets.dart';

import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final AllWidgets _allWidgets = AllWidgets();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xFF73AEF5),
                  Color(0xFF61A4F1),
                  Color(0xFF478DE0),
                  Color(0xFF398AE5),
                ],
                    stops: [
                  0.1,
                  0.4,
                  0.7,
                  0.9
                ])),
          ),
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 48, vertical: 55),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign Up",
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    _allWidgets.buildFieldTempletes(
                        "Name", Icons.account_circle_outlined, false),
                    const SizedBox(
                      height: 15,
                    ),
                    _allWidgets.buildFieldTempletes(
                        "Phone No.", Icons.phone_iphone_outlined, false),
                    const SizedBox(
                      height: 15,
                    ),
                    _allWidgets.buildFieldTempletes(
                        "Email", Icons.mail_outline_outlined, false),
                    const SizedBox(
                      height: 15,
                    ),
                    _allWidgets.buildFieldTempletes(
                        "Password", Icons.lock_outline, true),
                    const SizedBox(
                      height: 15,
                    ),
                    _allWidgets.buildFieldTempletes(
                        "Confirm Password", Icons.lock_outline, true),
                    const SizedBox(
                      height: 15,
                    ),
                    _allWidgets.buildLoginButton("sign up"),
                    moveLogin(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget moveLogin() {
    return GestureDetector(
        onTap: () {
          print("Sign Up Button Pressed");

          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginPage()));
        },
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Don't have an Account ? ",
                style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                )),
              ),
              TextSpan(
                text: 'Sign Up',
                style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                )),
              ),
            ],
          ),
        ));
  }
}
