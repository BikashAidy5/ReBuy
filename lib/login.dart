// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/splash_screen.dart';
import 'package:flutter_application_1/images.dart';
import 'package:flutter_application_1/login_button.dart';
import 'package:flutter_application_1/sign_up.dart';
import 'package:flutter_application_1/text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  //Creating textEditing Controller for username and password

  @override
  State<LoginPage> createState() => _NavigateState();
}

class _NavigateState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 40, left: 35, right: 35),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: Color(0xFF555555), width: 2),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "ReBuy",
                      style: GoogleFonts.dosis(
                        fontSize: 32,
                        color: Color(0xFF3C3C3C),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Login",
                  style: GoogleFonts.dosis(
                    fontSize: 48,
                    color: Color(0xFF3C3C3C),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  "Login with one of the following options",
                  style: GoogleFonts.dosis(
                    color: Color(0xFF828282),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 57,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFDEDEDE),
                        ),
                        child: PickImage(image: "lib/images/google.png")),
                    SizedBox(width: 30),
                    Container(
                      height: 57,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFDEDEDE),
                      ),
                      child: PickImage(image: "lib/images/apple.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    const Expanded(
                        child: Divider(color: Color(0xff555555), height: 1)),
                    Text(
                      ' Or ',
                    ),
                    const Expanded(
                        child: Divider(color: Color(0xff555555), height: 1))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                  controller: usernameController,
                  hintText: "Email",
                  obscuredText: false,
                  icon: Icon(Icons.email),
                ),
                SizedBox(
                  height: 18,
                ),
                MyTextField(
                  controller: passController,
                  obscuredText: true,
                  hintText: "Password",
                  icon: Icon(Icons.lock),
                ),
                SizedBox(
                  height: 14,
                ),
                LogIn(),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Color(0xFFFF5A5F),
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
