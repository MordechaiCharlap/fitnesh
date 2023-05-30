import 'package:fitnesh/widgets/screen_wrapper.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenWrapper(
        content: Center(
          child: Text("MyProfile"),
        ),
        selectedIndex: 0);
  }
}
