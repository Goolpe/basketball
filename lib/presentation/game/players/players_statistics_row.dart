import 'package:basketball/domain/entities/statistics.dart';
import 'package:basketball/presentation/game/players/total_done_item.dart';
import 'package:basketball/presentation/widgets/table_item.dart';
import 'package:basketball/presentation/widgets/table_item_widget.dart';
import 'package:flutter/material.dart';

class PlayersStatisticsRow extends TableRow {
  PlayersStatisticsRow({
    required Statistics statistics,
    super.key,
  }) : super(children: <TableItemWidget>[
          TableItem(
            statistics.formattedMinutes,
            fontWeight: FontWeight.w600,
          ),
          TableItem(statistics.totalPoints.toString()),
          TotalDoneItem(statistics.twoPoints),
          TotalDoneItem(statistics.threePoints),
          TotalDoneItem(statistics.penalty),
          for (final statistic in statistics.other)
            TableItem(statistic.toString())
        ]);
}
