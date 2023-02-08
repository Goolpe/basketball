import 'package:basketball/domain/entities/statistics.dart';

class Player extends Statistics {
  const Player({
    required this.number,
    required this.surname,
    required this.name,
    required this.imagePath,
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

  final int number;
  final String surname;
  final String name;
  final String imagePath;
}
