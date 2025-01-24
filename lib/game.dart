import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hw_25/screens/home_screen.dart';
import 'package:hw_25/screens/results_screen.dart';
import 'package:hw_25/screens/stats_screen.dart';

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

  int wins = 0;
  int losses = 0;
  int draws = 0;

  void startGame(String choice) {
    setState(() {
      playerChoice = choice;
      opponentChoice = _generateOpponentChoice();
      resultMessage = _determineWinner(playerChoice, opponentChoice);

      if (resultMessage == 'Вы победили!') {
        wins++;
      } else if (resultMessage == 'Вы проиграли!') {
        losses++;
      } else {
        draws++;
      }

      currentScreen = 'results';
    });
  }

  void restartGame() {
    setState(() {
      currentScreen = 'home';
    });
  }

  void showStats() {
    setState(() {
      currentScreen = 'stats';
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
        onViewStats: showStats,
        playerChoice: playerChoice,
        opponentChoice: opponentChoice,
        resultMessage: resultMessage,
      );
    } else if (currentScreen == 'stats') {
      screen = StatsScreen(
        wins: wins,
        losses: losses,
        draws: draws,
        onRestart: restartGame,
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
