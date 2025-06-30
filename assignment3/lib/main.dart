import 'package:assignment3/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'abou.dart';
import 'contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: bottomNavbar(),
    );
  }
}

class bottomNavbar extends StatefulWidget {
  const bottomNavbar({super.key});

  @override
  State<bottomNavbar> createState() => _bottomNavbarState();
}

class _bottomNavbarState extends State<bottomNavbar> {
  int _selctedIndex = 0;
  final List<Widget> _screens= [homePage(), aboutPage(), contactPage()];
  void _changeScreen(int index){
    setState(() {
      _selctedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selctedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selctedIndex,
        onTap: _changeScreen,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(_selctedIndex == 0 ? Icons.home : Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selctedIndex == 1 ? Icons.info : Icons.info_outline),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selctedIndex == 2 ? Icons.mail : Icons.mail_outline),
            label: 'Contact',
          )
        ],
      ),
    );
  }
}
