import 'package:basketball/domain/entities/period_points.dart';
import 'package:basketball/presentation/widgets/table_item.dart';
import 'package:flutter/material.dart';

class TeamPointsStatisticsTable extends StatelessWidget {
  const TeamPointsStatisticsTable({
    required this.leftPoints,
    required this.rightPoints,
    super.key,
  });

  final PeriodPoints leftPoints;
  final PeriodPoints rightPoints;

  static const header = [
    '1 пер.',
    '2 пер.',
    '3 пер.',
    '4 пер.',
  ];

  static final borderColor = Colors.black.withOpacity(0.05);
  static final borderSide = BorderSide(color: borderColor);

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder(
        top: borderSide,
        horizontalInside: borderSide,
      ),
      children: [
        TableRow(
          children: [
            for (final title in header)
              TableItem(
                title,
                height: 40,
              ),
          ],
        ),
        _pointsRow(leftPoints),
        _pointsRow(rightPoints),
      ],
    );
  }

  TableRow _pointsRow(PeriodPoints periodPoints) {
    return TableRow(
      children: [
        periodPoints.first,
        periodPoints.second,
        periodPoints.third,
        periodPoints.fourth
      ].map((value) {
        return TableItem(
          value.toString(),
          height: 50,
        );
      }).toList(),
    );
  }
}
