import 'package:fitnesh/widgets/screen_wrapper.dart';
import 'package:flutter/material.dart';

class PlannedWorkoutsScreen extends StatefulWidget {
  const PlannedWorkoutsScreen({super.key});

  @override
  State<PlannedWorkoutsScreen> createState() => _PlannedWorkoutsScreenState();
}

class _PlannedWorkoutsScreenState extends State<PlannedWorkoutsScreen> {
  @override
  Widget build(BuildContext context) {
    return const ScreenWrapper(
      content: Center(
        child: Text("PLANNED WORKOUTS"),
      ),
    );
  }
}
