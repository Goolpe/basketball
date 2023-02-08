import 'package:flutter/material.dart';

class BTitle extends StatelessWidget {
  const BTitle(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontWeight: FontWeight.w600),
    );
  }
}
