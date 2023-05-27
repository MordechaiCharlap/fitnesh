import 'package:fitnesh/screens/chats/chats_screen.dart';
import 'package:fitnesh/screens/explore/explore_screen.dart';
import 'package:fitnesh/screens/home/home_screen.dart';
import 'package:fitnesh/screens/leaderboard/leaderboard_screen.dart';
import 'package:fitnesh/screens/my_profile/my_profile_screen.dart';
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
          // Only trigger onItemSelected callback if the selected index is different

          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  mainScreens[index],
              transitionDuration:
                  Duration.zero, // Set the transition duration to zero
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return child; // No animation transition, return the child directly
              },
            ),
          );
        }
      },
    );
  }
}
