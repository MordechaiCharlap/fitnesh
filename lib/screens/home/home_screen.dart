import 'package:fitnesh/screens/home/custom_home_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Column(children: [
        CustomHomeButton(),
        CustomHomeButton(),
        CustomHomeButton()
      ]),
      Column(children: [
        CustomHomeButton(),
        CustomHomeButton(),
        CustomHomeButton()
      ])
    ]);
  }
}
