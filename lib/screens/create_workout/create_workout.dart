import 'package:fitnesh/widgets/screen_wrapper.dart';
import 'package:flutter/material.dart';

class CreateWorkoutScreen extends StatefulWidget {
  const CreateWorkoutScreen({super.key});

  @override
  State<CreateWorkoutScreen> createState() => _CreateWorkoutScreenState();
}

class _CreateWorkoutScreenState extends State<CreateWorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return const ScreenWrapper(
      content: Center(
        child: Text("CREATE WORKOUT"),
      ),
    );
  }
}
