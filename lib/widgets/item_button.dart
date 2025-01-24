import 'package:flutter/material.dart';

class ItemButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  const ItemButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
      ),
    );
  }
}
