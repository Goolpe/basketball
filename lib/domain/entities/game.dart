import 'package:basketball/domain/entities/team.dart';
import 'package:intl/intl.dart';

class Game {
  const Game({
    required this.place,
    required this.dateTime,
    required this.leftTeam,
    required this.rightTeam,
  });

  final String place;
  final DateTime dateTime;
  final Team leftTeam;
  final Team rightTeam;

  String get date => DateFormat('dd.MM.yyyy').format(dateTime);
  String get time => DateFormat('HH:mm').format(dateTime);
}
