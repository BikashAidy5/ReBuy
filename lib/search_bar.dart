// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final controller;
  final String hintText;
  const SearchBar(
      {super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: const Icon(Icons.search),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.blue),
          ),
          hintText: hintText,
          fillColor: const Color(
            0xFFDEDEDE,
          ),
          filled: true,
        ),
      ),
    );
  }
}
