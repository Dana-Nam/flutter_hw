import 'dart:math';
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
  String playerChoice = '';
  String opponentChoice = '';
  String resultMessage = '';

  void startGame(String choice) {
    setState(() {
      playerChoice = choice;
      opponentChoice = _generateOpponentChoice();
      resultMessage = _determineWinner(playerChoice, opponentChoice);
      currentScreen = 'results';
    });
  }

  void restartGame() {
    setState(() {
      currentScreen = 'home';
    });
  }

  String _generateOpponentChoice() {
    const choices = ['Ножницы', 'Бумага', 'Камень'];
    return choices[Random().nextInt(choices.length)];
  }

  String _determineWinner(String player, String opponent) {
    if (player == opponent) return 'Ничья!';
    if ((player == 'Ножницы' && opponent == 'Бумага') ||
        (player == 'Бумага' && opponent == 'Камень') ||
        (player == 'Камень' && opponent == 'Ножницы')) {
      return 'Вы победили!';
    }
    return 'Вы проиграли!';
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;

    if (currentScreen == 'results') {
      screen = ResultsScreen(
        onGameRestarted: restartGame,
        playerChoice: playerChoice,
        opponentChoice: opponentChoice,
        resultMessage: resultMessage,
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
