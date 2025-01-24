import 'package:flutter/material.dart';
import 'package:hw_25/widgets/decorated_text.dart';

class ResultsScreen extends StatelessWidget {
  final void Function() onGameRestarted;
  const ResultsScreen({super.key, required this.onGameRestarted});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DecoratedText(label: 'Win/Loose'),
          SizedBox(height: 50),
          Text('Your choice:'),
          Text("Opponent's choice:"),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: onGameRestarted,
            child: Text('Restart'),
          ),
        ],
      ),
    );
  }
}
