import 'package:fitnesh/utils/navigation_utils.dart';
import 'package:fitnesh/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomHomeButton extends StatefulWidget {
  final Widget screen;
  final String label;
  final IconData icon;
  const CustomHomeButton(
      {super.key,
      required this.screen,
      required this.label,
      required this.icon});

  @override
  State<CustomHomeButton> createState() => _CustomHomeButtonState();
}

class _CustomHomeButtonState extends State<CustomHomeButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
        onPressed: () {
          navigate(context, widget.screen);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.icon, size: 50),
            const SizedBox(
              height: 6.00,
            ),
            CustomText(
              widget.label,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
