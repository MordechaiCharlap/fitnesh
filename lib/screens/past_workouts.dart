import 'package:fitnesh/widgets/screen_wrapper.dart';
import 'package:flutter/material.dart';

class PastWorkoutsScreen extends StatefulWidget {
  const PastWorkoutsScreen({super.key});

  @override
  State<PastWorkoutsScreen> createState() => _PastWorkoutsScreenState();
}

class _PastWorkoutsScreenState extends State<PastWorkoutsScreen> {
  @override
  Widget build(BuildContext context) {
    return const ScreenWrapper(
      content: Center(
        child: Text("PAST WORKOUTS"),
      ),
    );
  }
}
