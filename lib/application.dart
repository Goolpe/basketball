import 'package:basketball/core/theme/theme.dart';
import 'package:basketball/domain/mock_match.dart';
import 'package:basketball/presentation/game/game_statistics_screen.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: BThemeData.light,
      debugShowCheckedModeBanner: false,
      home: GameStatisticsScreen(game: mockGame),
    );
  }
}
