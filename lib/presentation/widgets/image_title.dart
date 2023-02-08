import 'package:flutter/material.dart';

class ImageTitle extends StatelessWidget {
  const ImageTitle({
    required this.path,
    required this.title,
    super.key,
  });

  final String path;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          path,
          height: 56,
          width: 56,
          errorBuilder: (context, error, stackTrace) => const SizedBox.shrink(),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          textAlign: TextAlign.center,
          maxLines: 2,
          style: const TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
