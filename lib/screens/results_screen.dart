import 'package:flutter/material.dart';
import 'package:hw_25/widgets/decorated_text.dart';
import 'package:hw_25/widgets/item_button.dart';

class ResultsScreen extends StatelessWidget {
  final void Function() onGameRestarted;
  final void Function() onViewStats;
  final String playerChoice;
  final String opponentChoice;
  final String resultMessage;

  const ResultsScreen({
    super.key,
    required this.onGameRestarted,
    required this.onViewStats,
    required this.playerChoice,
    required this.opponentChoice,
    required this.resultMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DecoratedText(label: resultMessage),
          SizedBox(height: 50),
          Text('Ваш выбор: $playerChoice', style: TextStyle(fontSize: 18)),
          Text('Выбор противника: $opponentChoice',
              style: TextStyle(fontSize: 18)),
          SizedBox(height: 50),
          ItemButton(
            onPressed: onGameRestarted,
            label: 'Начать заново',
          ),
          SizedBox(height: 10),
          ItemButton(
            onPressed: onViewStats,
            label: 'Посмотреть статистику',
          ),
        ],
      ),
    );
  }
}
