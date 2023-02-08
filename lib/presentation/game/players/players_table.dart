import 'package:flutter/material.dart';

class PlayersTable extends StatelessWidget {
  const PlayersTable({
    required this.children,
    required this.columnWidth,
    super.key,
  });

  final List<TableRow> children;
  final double columnWidth;

  static final borderColor = Colors.black.withOpacity(0.05);
  static final borderSide = BorderSide(color: borderColor);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultColumnWidth: FixedColumnWidth(columnWidth),
      border: TableBorder(
        top: borderSide,
        horizontalInside: borderSide,
        right: borderSide,
      ),
      children: children,
    );
  }
}
