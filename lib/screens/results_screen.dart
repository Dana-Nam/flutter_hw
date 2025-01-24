import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final void Function() onGameRestarted;
  const ResultsScreen({super.key, required this.onGameRestarted});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Win/Loose'),
          ElevatedButton(
            onPressed: onGameRestarted,
            child: Text('Restart'),
          ),
        ],
      ),
    );
  }
}
