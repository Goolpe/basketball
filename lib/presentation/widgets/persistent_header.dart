import 'package:flutter/material.dart';

class PersistentHeader extends SliverPersistentHeaderDelegate {
  PersistentHeader({
    required this.child,
    this.height = 60,
  });

  final Widget child;
  final double height;
  @override
  double get minExtent => height;
  @override
  double get maxExtent => height;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(PersistentHeader oldDelegate) {
    return true;
  }
}
