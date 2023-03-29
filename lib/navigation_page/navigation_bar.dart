import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  List pages = [
    HomePage(),
    const Center(
      child: Text("Message"),
    ),
    const Center(
      child: Text("Camera"),
    ),
    const Center(
      child: Text("Favourite"),
    ),
    const Center(
      child: Text("Account"),
    ),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        onTap: (value) => setState(() {
          index = value;
        }),
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
              ),
              label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
              ),
              label: "Camera"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
              ),
              label: "Favourites"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Person"),
        ],
      ),
      body: pages[index],
    );
  }
}
