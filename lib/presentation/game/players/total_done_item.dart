import 'package:basketball/domain/entities/point.dart';
import 'package:basketball/presentation/widgets/table_item_widget.dart';
import 'package:flutter/material.dart';

class TotalDoneItem extends TableItemWidget {
  TotalDoneItem(TotalDone totalDone, {super.key})
      : super(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                totalDone.doneOnTotal,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('${totalDone.percent}%'),
            ],
          ),
        );
}
