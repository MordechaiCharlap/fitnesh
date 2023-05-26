import 'package:fitnesh/screens/home/home_screen.dart';
import 'package:fitnesh/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(),
        body: IndexedStack(
          index: 0,
          children: [HomeScreen()],
        ),
      ),
    );
  }
}
