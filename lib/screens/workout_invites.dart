import 'package:fitnesh/widgets/screen_wrapper.dart';
import 'package:flutter/material.dart';

class WorkoutInvitesScreen extends StatefulWidget {
  const WorkoutInvitesScreen({super.key});

  @override
  State<WorkoutInvitesScreen> createState() => _WorkoutInvitesScreenState();
}

class _WorkoutInvitesScreenState extends State<WorkoutInvitesScreen> {
  @override
  Widget build(BuildContext context) {
    return const ScreenWrapper(
      content: Center(
        child: Text("WORKOUT INVITES"),
      ),
    );
  }
}
