import 'package:fitnesh/screens/chats_screen.dart';
import 'package:fitnesh/screens/explore_screen.dart';
import 'package:fitnesh/screens/home_screen.dart';
import 'package:fitnesh/screens/leaderboard_screen.dart';
import 'package:fitnesh/screens/my_profile_screen.dart';
import 'package:fitnesh/utils/navigation_utils.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  const CustomBottomNavigationBar({super.key, required this.selectedIndex});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

List<Widget> mainScreens = const [
  MyProfileScreen(),
  LeaderboardScreen(),
  HomeScreen(),
  ChatsScreen(),
  ExploreScreen()
];

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final TextStyle _labelStyle = const TextStyle(fontSize: 12);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined), label: "Leaderboard"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
        BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore), label: "Explore"),
      ],
      currentIndex: widget.selectedIndex != -1 ? widget.selectedIndex : 0,
      selectedItemColor:
          widget.selectedIndex != -1 ? Colors.black : Colors.black54,
      unselectedItemColor: Colors.black54,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: _labelStyle,
      onTap: (index) {
        // Handle navigation bar item selection
        if ((widget.selectedIndex != -1 && index != widget.selectedIndex) ||
            widget.selectedIndex == -1) {
          navigate(context, mainScreens[index]);
        }
      },
    );
  }
}
