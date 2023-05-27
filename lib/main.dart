import 'package:fitnesh/screens/chats/chats_screen.dart';
import 'package:fitnesh/screens/explore/explore_screen.dart';
import 'package:fitnesh/screens/home/home_screen.dart';
import 'package:fitnesh/screens/leaderboard/leaderboard_screen.dart';
import 'package:fitnesh/screens/my_profile/my_profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: const [
            MyProfileScreen(),
            LeaderboardScreen(),
            HomeScreen(),
            ChatsScreen(),
            ExploreScreen()
          ],
        ),
      ),
    );
  }
}
