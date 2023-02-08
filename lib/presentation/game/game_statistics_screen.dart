import 'package:basketball/domain/entities/game.dart';
import 'package:basketball/domain/entities/team.dart';
import 'package:basketball/presentation/game/ad_banner.dart';
import 'package:basketball/presentation/game/players/players_statistics.dart';
import 'package:basketball/presentation/game/team_points/team_points_statistics.dart';
import 'package:basketball/presentation/widgets/tabs_wrapper.dart';
import 'package:basketball/presentation/game/team_tabs.dart';
import 'package:flutter/material.dart';

class GameStatisticsScreen extends StatelessWidget {
  const GameStatisticsScreen({required this.game, super.key});

  final Game game;

  Team get leftTeam => game.leftTeam;
  Team get rightTeam => game.rightTeam;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Игра'),
      ),
      body: TabsWrapper(
        length: 2,
        child: (controller, activeIndex) => CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const AdBanner(),
                  TeamPointsStatistics(game: game),
                  const SizedBox(height: 12),
                ],
              ),
            ),
            TeamTabs(
              leftName: leftTeam.name,
              rightName: rightTeam.name,
              controller: controller,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  [
                    PlayersStatistics(team: leftTeam),
                    PlayersStatistics(team: rightTeam),
                  ][activeIndex],
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
