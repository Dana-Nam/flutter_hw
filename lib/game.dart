import 'package:flutter/material.dart';
import 'package:hw_25/screens/home_screen.dart';
import 'package:hw_25/screens/results_screen.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  var currentScreen = 'home';

  void startGame() {
    setState(() {
      currentScreen = 'results';
    });
  }

  void restartGame() {
    setState(() {
      currentScreen = 'home';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;
    if (currentScreen == 'results') {
      screen = ResultsScreen(
        onGameRestarted: restartGame,
      );
    } else {
      screen = HomeScreen(
        onGameStarted: startGame,
      );
    }

    return MaterialApp(
      home: Scaffold(body: screen),
    );
  }
}
