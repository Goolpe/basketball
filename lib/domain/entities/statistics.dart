import 'package:basketball/domain/entities/point.dart';
import 'package:intl/intl.dart';

class Statistics {
  const Statistics({
    required this.minutes,
    required this.totalPoints,
    required this.twoPoints,
    required this.threePoints,
    required this.penalty,
    required this.ssh,
    required this.chsh,
    required this.pb,
    required this.gp,
    required this.ph,
    required this.bsh,
    required this.pt,
    required this.f,
    required this.fs,
    required this.plusMinus,
    required this.kpi,
  });

  final DateTime minutes;
  final int totalPoints;
  final TotalDone twoPoints;
  final TotalDone threePoints;
  final TotalDone penalty;
  final int ssh;
  final int chsh;
  final int pb;
  final int gp;
  final int ph;
  final int bsh;
  final int pt;
  final int f;
  final int fs;
  final int plusMinus;
  final int kpi;

  String get formattedMinutes => DateFormat('mm:ss').format(minutes);
  List<int> get other =>
      [ssh, chsh, pb, gp, ph, bsh, pt, f, fs, plusMinus, kpi];
}
