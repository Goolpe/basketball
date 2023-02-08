import 'package:basketball/domain/entities/player.dart';
import 'package:basketball/domain/entities/team.dart';
import 'package:basketball/presentation/game/players/players_statistics_row.dart';
import 'package:basketball/presentation/game/players/player_table_item.dart';
import 'package:basketball/presentation/game/players/players_table.dart';
import 'package:basketball/presentation/widgets/table_item.dart';
import 'package:flutter/material.dart';

class PlayersStatistics extends StatelessWidget {
  const PlayersStatistics({required this.team, super.key});

  final Team team;

  List<Player> get _players => team.players;

  static const header = [
    'Мин.',
    'О',
    '2-очк',
    '3-очк',
    'Штрф.',
    'СШ',
    'ЧШ',
    'ПБ',
    'ГП',
    'ПХ',
    'БШ',
    'ПТ',
    'Ф',
    'ФС',
    '+/-',
    'КПИ',
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PlayersTable(
            columnWidth: 200,
            children: [
              TableRow(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.01),
                ),
                children: [
                  TableItem(
                    'Игрок',
                    alignment: Alignment.centerLeft,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              for (final player in _players)
                TableRow(
                  children: [
                    PlayerTableItem(player: player),
                  ],
                ),
              TableRow(
                children: [
                  TableItem(
                    'Команда',
                    alignment: Alignment.centerLeft,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: PlayersTable(
                columnWidth: 80,
                children: [
                  TableRow(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.01),
                    ),
                    children: [
                      for (final title in header)
                        TableItem(
                          title,
                          fontWeight: FontWeight.w600,
                        ),
                    ],
                  ),
                  for (final player in _players)
                    PlayersStatisticsRow(statistics: player),
                  PlayersStatisticsRow(statistics: team),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
