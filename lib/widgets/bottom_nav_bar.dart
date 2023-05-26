import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;
  const CustomBottomNavigationBar(
      {super.key, required this.selectedIndex, required this.onItemSelected});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

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
      currentIndex: widget.selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black54,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: _labelStyle,
      onTap: widget.onItemSelected,
    );
  }
}
