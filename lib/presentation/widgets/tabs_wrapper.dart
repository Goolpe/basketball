import 'package:flutter/material.dart';

class TabsWrapper extends StatefulWidget {
  const TabsWrapper({
    required this.child,
    required this.length,
    super.key,
  });

  final Widget Function(TabController, int) child;
  final int length;

  @override
  State<TabsWrapper> createState() => _TabsWrapperState();
}

class _TabsWrapperState extends State<TabsWrapper>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  var _activeIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: widget.length, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _activeIndex = _tabController.index;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child(_tabController, _activeIndex);
  }
}
