import 'package:flutter/material.dart';
import 'package:hw_25/widgets/decorated_text.dart';
import 'package:hw_25/widgets/item_button.dart';

class HomeScreen extends StatelessWidget {
  final void Function() onGameStarted;
  const HomeScreen({super.key, required this.onGameStarted});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DecoratedText(label: 'Выбери свой ход'),
          SizedBox(height: 50),
          ItemButton(
            onPressed: onGameStarted,
            label: 'Scissors',
          ),
          ItemButton(
            onPressed: onGameStarted,
            label: 'Paper',
          ),
          ItemButton(
            onPressed: onGameStarted,
            label: 'Rock',
          ),
        ],
      ),
    );
  }
}
