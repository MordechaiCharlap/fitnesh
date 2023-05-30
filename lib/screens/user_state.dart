import 'package:fitnesh/screens/landing_page.dart';
import 'package:fitnesh/widgets/custom_text.dart';
import 'package:fitnesh/widgets/main_screens_stack.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserState extends StatelessWidget {
  const UserState({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, userSnapshot) {
        if (userSnapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (userSnapshot.connectionState == ConnectionState.active) {
          if (userSnapshot.hasData) {
            return const MainScreens();
          } else {
            return const LandingPageScreen();
          }
        } else if (userSnapshot.hasError) {
          return const Center(
            child: CustomText('Error accoured'),
          );
        }
        return Container();
      },
    );
  }
}
