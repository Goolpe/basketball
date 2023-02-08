import 'package:basketball/domain/entities/game.dart';
import 'package:basketball/presentation/game/team_points/team_points.dart';
import 'package:basketball/presentation/game/team_points/team_points_statistics_table.dart';
import 'package:flutter/material.dart';

class TeamPointsStatistics extends StatelessWidget {
  const TeamPointsStatistics({required this.game, super.key});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 2,
        child: Column(
          children: [
            TeamPoints(game: game),
            TeamPointsStatisticsTable(
              leftPoints: game.leftTeam.points,
              rightPoints: game.rightTeam.points,
            ),
          ],
        ),
      ),
    );
  }
}
