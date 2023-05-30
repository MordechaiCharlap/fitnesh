import 'package:fitnesh/widgets/screen_wrapper.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return const ScreenWrapper(
        content: Center(child: Text("Explore")), selectedIndex: 4);
  }
}
