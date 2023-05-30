import 'package:fitnesh/widgets/screen_wrapper.dart';
import 'package:flutter/material.dart';

class FriendsWorkoutsScreen extends StatefulWidget {
  const FriendsWorkoutsScreen({super.key});

  @override
  State<FriendsWorkoutsScreen> createState() => _FriendsWorkoutsScreenState();
}

class _FriendsWorkoutsScreenState extends State<FriendsWorkoutsScreen> {
  @override
  Widget build(BuildContext context) {
    return const ScreenWrapper(
      content: Center(
        child: Text("FRIENDS WORKOUTS"),
      ),
    );
  }
}
