import 'package:flutter/material.dart';
import 'package:fitnesh/screens/chats_screen.dart';
import 'package:fitnesh/screens/explore_screen.dart';
import 'package:fitnesh/screens/home_screen.dart';
import 'package:fitnesh/screens/leaderboard_screen.dart';
import 'package:fitnesh/screens/my_profile_screen.dart';

class MainScreens extends StatelessWidget {
  const MainScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IndexedStack(
        index: 2,
        children: [
          MyProfileScreen(),
          LeaderboardScreen(),
          HomeScreen(),
          ChatsScreen(),
          ExploreScreen()
        ],
      ),
    );
  }
}
