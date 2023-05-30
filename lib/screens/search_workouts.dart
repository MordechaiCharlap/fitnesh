import 'package:fitnesh/widgets/screen_wrapper.dart';
import 'package:flutter/material.dart';

class SearchWorkoutsScreen extends StatefulWidget {
  const SearchWorkoutsScreen({super.key});

  @override
  State<SearchWorkoutsScreen> createState() => _SearchWorkoutsScreenState();
}

class _SearchWorkoutsScreenState extends State<SearchWorkoutsScreen> {
  @override
  Widget build(BuildContext context) {
    return const ScreenWrapper(
      content: Center(
        child: Text("SEARCH WORKOUTS"),
      ),
    );
  }
}
