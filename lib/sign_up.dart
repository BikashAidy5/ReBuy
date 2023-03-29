import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/signup_button.dart';
import 'package:google_fonts/google_fonts.dart';

import 'images.dart';
import 'text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final usernameController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 40, left: 35, right: 35),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                          border: Border.all(
                              color: const Color(0xFF555555), width: 2),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 30,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "ReBuy",
                      style: GoogleFonts.dosis(
                        fontSize: 32,
                        color: const Color(0xFF3C3C3C),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Sign Up",
                  style: GoogleFonts.dosis(
                    fontSize: 48,
                    color: const Color(0xFF3C3C3C),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  "Sign Up with one of the following options",
                  style: GoogleFonts.dosis(
                    color: const Color(0xFF828282),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 57,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFDEDEDE),
                        ),
                        child: const PickImage(image: "lib/images/google.png")),
                    const SizedBox(width: 30),
                    Container(
                      height: 57,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFDEDEDE),
                      ),
                      child: const PickImage(image: "lib/images/apple.png"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: const [
                    Expanded(
                        child: Divider(color: Color(0xff555555), height: 1)),
                    Text(
                      ' Or ',
                    ),
                    Expanded(
                        child: Divider(color: Color(0xff555555), height: 1))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  controller: usernameController,
                  hintText: "Name",
                  obscuredText: false,
                  icon: const Icon(Icons.email),
                ),
                const SizedBox(
                  height: 18,
                ),
                MyTextField(
                  controller: usernameController,
                  hintText: "Email",
                  obscuredText: false,
                  icon: const Icon(Icons.email),
                ),
                const SizedBox(
                  height: 18,
                ),
                MyTextField(
                  controller: passController,
                  obscuredText: true,
                  hintText: "Password",
                  icon: const Icon(Icons.lock),
                ),
                const SizedBox(
                  height: 14,
                ),
                const SignUpButton(),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Log In",
                        style: TextStyle(
                            color: Color(0xFFFF5A5F),
                            fontWeight: FontWeight.bold),
                      ),
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
