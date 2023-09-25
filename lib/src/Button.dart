import 'package:flutter/material.dart';

// Creating Stateless Widget for buttons
class Button extends StatelessWidget {
  final color;
  final textColor;
  final String? buttonText;
  final buttonTapped;

  Button({
    this.color,
    this.textColor,
    this.buttonText,
    this.buttonTapped
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: ClipRRect(
          child: Container(
            color: color,
            child: Text(
              buttonText!,
              style: TextStyle(
                color: textColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}