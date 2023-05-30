import 'package:fitnesh/screens/login.dart';
import 'package:fitnesh/screens/register.dart';
import 'package:fitnesh/utils/navigation_utils.dart';
import 'package:fitnesh/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomText("Welcome!"),
        FloatingActionButton(onPressed: () {
          navigate(context, const LoginScreen());
        }),
        FloatingActionButton(onPressed: () {
          navigate(context, const RegisterScreen());
        }),
      ],
    );
  }
}
