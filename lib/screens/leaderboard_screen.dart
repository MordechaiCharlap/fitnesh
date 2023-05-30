import 'package:fitnesh/widgets/screen_wrapper.dart';
import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenWrapper(
        content: Center(
          child: Text("Leaderboard"),
        ),
        selectedIndex: 1,
        showNavBar: true);
  }
}
