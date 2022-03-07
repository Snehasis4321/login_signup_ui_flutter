// ignore_for_file: prefer_const_constructors, unused_element, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup_ui_flutter/constrains/constrains.dart';

class AllWidgets {
  Widget buildFieldTempletes(String label, IconData icon, bool hide) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: kLabelStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecoration,
          height: 60,
          child: TextField(
            obscureText: hide,
            keyboardType: TextInputType.emailAddress,
            style:
                GoogleFonts.openSans(textStyle: TextStyle(color: Colors.white)),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                icon,
                color: Colors.white,
              ),
              prefixIconColor: Colors.white,
              hintText: "Enter Your $label",
              hintStyle: kHintStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildforgotButton() {
    return Container(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () {
            print("Forgot Password");
          },
          child: Text(
            "Forgot Password",
            style: kLabelStyle,
          ),
        ));
  }

  Widget buildLoginButton(String label) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 25),
      child: MaterialButton(
        child: Text(
          label.toUpperCase(),
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
                color: Color(0xFF527DAA),
                letterSpacing: 1,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
        padding: EdgeInsets.all(16),
        onPressed: () {
          print("Login Pressed");
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.white,
      ),
    );
  }

  Widget orSignInWith() {
    return Column(
      children: [
        Text(
          "- OR -",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Sign in With",
          style: kLabelStyle,
        ),
      ],
    );
  }

  Widget buildSocialButton(VoidCallback onTap, AssetImage img) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 2), blurRadius: 6)
            ],
            image: DecorationImage(image: img)),
      ),
    );
  }

  Widget buildRowSocial() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildSocialButton(() {
            print("Login with facebook.");
          }, AssetImage("assets/facebook.png")),
          buildSocialButton(() {
            print("Login with Google.");
          }, AssetImage("assets/google.png")),
        ],
      ),
    );
  }
}
