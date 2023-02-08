import 'package:basketball/presentation/widgets/table_item_widget.dart';
import 'package:flutter/material.dart';

class TableItem extends TableItemWidget {
  TableItem(
    String title, {
    super.height,
    super.alignment,
    FontWeight? fontWeight,
    super.key,
  }) : super(
          child: Text(
            title,
            style: TextStyle(fontSize: 15.0, fontWeight: fontWeight),
          ),
        );
}
