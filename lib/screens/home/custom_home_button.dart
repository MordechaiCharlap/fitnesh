import 'package:flutter/material.dart';

class CustomHomeButton extends StatefulWidget {
  const CustomHomeButton({super.key});

  @override
  State<CustomHomeButton> createState() => _CustomHomeButtonState();
}

class _CustomHomeButtonState extends State<CustomHomeButton> {
  @override
  Widget build(BuildContext context) {
    return const Text("HomeButton");
  }
}
