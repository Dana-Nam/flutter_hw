import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final void Function() onGameStarted;
  const HomeScreen({super.key, required this.onGameStarted});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Выбери свой ход'),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: onGameStarted,
            child: Text('Scissors'),
          ),
          ElevatedButton(
            onPressed: onGameStarted,
            child: Text('Paper'),
          ),
          ElevatedButton(
            onPressed: onGameStarted,
            child: Text('Rock'),
          ),
        ],
      ),
    );
  }
}
