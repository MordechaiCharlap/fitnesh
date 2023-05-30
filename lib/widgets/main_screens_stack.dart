import 'package:flutter/material.dart';
import 'package:fitnesh/screens/chats.dart';
import 'package:fitnesh/screens/explore.dart';
import 'package:fitnesh/screens/home.dart';
import 'package:fitnesh/screens/leaderboard.dart';
import 'package:fitnesh/screens/my_profile.dart';

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
