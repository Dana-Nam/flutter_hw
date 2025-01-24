import 'package:flutter/material.dart';
import 'package:hw_25/widgets/decorated_text.dart';
import 'package:hw_25/widgets/item_button.dart';

class StatsScreen extends StatelessWidget {
  final int wins;
  final int losses;
  final int draws;
  final void Function() onRestart;

  const StatsScreen({
    super.key,
    required this.wins,
    required this.losses,
    required this.draws,
    required this.onRestart,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DecoratedText(label: 'Статистика игры'),
          SizedBox(height: 30),
          Text('Победы: $wins', style: TextStyle(fontSize: 18)),
          Text('Поражения: $losses', style: TextStyle(fontSize: 18)),
          Text('Ничьи: $draws', style: TextStyle(fontSize: 18)),
          SizedBox(height: 50),
          ItemButton(
            onPressed: onRestart,
            label: 'Еще раз',
          ),
        ],
      ),
    );
  }
}
