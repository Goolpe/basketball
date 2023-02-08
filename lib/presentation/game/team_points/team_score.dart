import 'package:basketball/domain/entities/team.dart';
import 'package:basketball/presentation/widgets/image_title.dart';
import 'package:flutter/material.dart';

class TeamScore extends StatelessWidget {
  const TeamScore({
    required this.team,
    this.isReversed = false,
    super.key,
  });

  final Team team;
  final bool isReversed;

  @override
  Widget build(BuildContext context) {
    final widgets = [
      Expanded(
        child: ImageTitle(
          path: team.imagePath,
          title: team.name,
        ),
      ),
      Text(
        team.totalPoints.toString(),
        style: const TextStyle(fontSize: 21),
      ),
      const SizedBox(
        height: 20,
        child: VerticalDivider(),
      ),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: isReversed ? widgets.reversed.toList() : widgets,
    );
  }
}
