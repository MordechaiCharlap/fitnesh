import 'package:fitnesh/widgets/screen_wrapper.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return const ScreenWrapper(
        content: Center(child: Text("Chats")), selectedIndex: 3);
  }
}
