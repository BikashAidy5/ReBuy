import 'package:flutter/material.dart';
import 'package:flutter_application_1/images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SafeArea(
          child: Container(
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: PickImage(image: "lib/images/google.png"),
            ),
          ),
        ),
      ],
    );
  }
}
