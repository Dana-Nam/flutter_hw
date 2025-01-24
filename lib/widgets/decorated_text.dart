import 'package:flutter/material.dart';

class DecoratedText extends StatelessWidget {
  final String label;
  const DecoratedText({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }
}
