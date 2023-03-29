import 'package:flutter/material.dart';

class PickImage extends StatelessWidget {
  final String image;
  const PickImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        image,
        height: 40,
      ),
    );
  }
}
