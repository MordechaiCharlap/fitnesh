import 'package:fitnesh/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class ScreenWrapper extends StatelessWidget {
  final Widget content;
  final int selectedIndex;
  final bool showNavBar;
  const ScreenWrapper({
    Key? key,
    required this.content,
    required this.selectedIndex,
    this.showNavBar = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          content,
          showNavBar
              ? Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: CustomBottomNavigationBar(
                    selectedIndex: selectedIndex,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
