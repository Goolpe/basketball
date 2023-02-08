import 'package:basketball/domain/entities/period_points.dart';
import 'package:basketball/domain/entities/player.dart';
import 'package:basketball/domain/entities/statistics.dart';

class Team extends Statistics {
  const Team({
    required this.imagePath,
    required this.name,
    required this.points,
    required this.players,
    required super.minutes,
    required super.totalPoints,
    required super.twoPoints,
    required super.threePoints,
    required super.penalty,
    required super.ssh,
    required super.chsh,
    required super.pb,
    required super.gp,
    required super.ph,
    required super.bsh,
    required super.pt,
    required super.f,
    required super.fs,
    required super.plusMinus,
    required super.kpi,
  });

  final String imagePath;
  final String name;
  final PeriodPoints points;
  final List<Player> players;
}
