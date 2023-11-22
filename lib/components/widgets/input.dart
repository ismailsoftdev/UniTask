// Input widget for the app
import 'package:flutter/material.dart';

// stateful input widget for the app with text, background color, text color as constants
class InputWidget extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const InputWidget(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
