// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup_ui_flutter/pages/signup_page.dart';
import 'package:login_signup_ui_flutter/widgets/all_widgets.dart';
import 'package:login_signup_ui_flutter/constrains/constrains.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;
  final AllWidgets _allWidgets = AllWidgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: const [
                  Color(0xFF73AEF5),
                  Color(0xFF61A4F1),
                  Color(0xFF478DE0),
                  Color(0xFF398AE5),
                ],
                    stops: const [
                  0.1,
                  0.4,
                  0.7,
                  0.9
                ])),
          ),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 48, vertical: 70),
                child: Column(
                  children: [
                    Text(
                      "Sign In",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    _allWidgets.buildFieldTempletes(
                        "Email", Icons.mail_outline_outlined, false),
                    SizedBox(
                      height: 30,
                    ),
                    _allWidgets.buildFieldTempletes(
                        "Password", Icons.lock_outline, true),
                    _allWidgets.buildforgotButton(),
                    _needrememberMe(),
                    _allWidgets.buildLoginButton("login"),
                    _allWidgets.orSignInWith(),
                    _allWidgets.buildRowSocial(),
                    buildSignUp()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSignUp() {
    return GestureDetector(
        onTap: () {
          print("Sign Up Button Pressed");

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignUpPage()));
        },
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Don't have an Account ? ",
                style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                )),
              ),
              TextSpan(
                text: 'Sign Up',
                style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                )),
              ),
            ],
          ),
        ));
  }

  Widget _needrememberMe() {
    return Row(children: [
      Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white),
          child: Checkbox(
            value: _rememberMe,
            checkColor: Colors.green,
            activeColor: Colors.white,
            onChanged: (bool? value) {
              setState(() {
                _rememberMe = value!;
              });
            },
          )),
      Text(
        "Remember Me",
        style: kLabelStyle,
      )
    ]);
  }
}
