import 'package:flutter/material.dart';

class TableItemWidget extends StatelessWidget {
  const TableItemWidget({
    required this.child,
    this.height,
    this.alignment,
    super.key,
  });

  final Widget child;
  final double? height;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 60,
      alignment: alignment ?? Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: child,
    );
  }
}
