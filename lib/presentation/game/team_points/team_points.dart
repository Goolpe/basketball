import 'package:basketball/domain/entities/game.dart';
import 'package:basketball/presentation/game/team_points/team_score.dart';
import 'package:flutter/material.dart';

class TeamPoints extends StatelessWidget {
  const TeamPoints({
    required this.game,
    super.key,
  });

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(game.place),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TeamScore(
                  team: game.leftTeam,
                ),
              ),
              Column(
                children: [
                  Text(game.date),
                  const SizedBox(height: 8),
                  Text(
                    game.time,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TeamScore(
                  team: game.rightTeam,
                  isReversed: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
