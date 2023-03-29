// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/cards.dart';
import 'package:flutter_application_1/images.dart';
import 'package:flutter_application_1/notes.dart';
import 'package:flutter_application_1/search_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  final searchcontroller = TextEditingController();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Row(
                  children: [
                    Stack(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 0.5),
                              borderRadius: BorderRadius.circular(42),
                            ),
                            child: PickImage(image: "lib/images/google.png"),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Icon(
                            Icons.menu,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Column(
                      children: [
                        Text(
                          "Hello Alice",
                          style: GoogleFonts.firaSans(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Welcome Back !",
                          style: GoogleFonts.dosis(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFF5A5F),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (() {}),
                      icon: Icon(Icons.menu),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 37,
              ),
              SearchBar(
                  hintText: "Search for books, guitar and more...",
                  controller: searchcontroller),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "New Arrivals",
                    style: GoogleFonts.firaSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF3C3C3C),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "View More",
                    style: GoogleFonts.firaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF898989),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Cards(),
              SizedBox(
                height: 27,
              ),
              Row(
                children: [
                  Text(
                    "Recently Viewed",
                    style: GoogleFonts.firaSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF3C3C3C),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "View More",
                    style: GoogleFonts.firaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF898989),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Notes(),
            ],
          ),
        ),
      ),
    );
  }
}
