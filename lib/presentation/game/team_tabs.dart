import 'package:basketball/presentation/widgets/persistent_header.dart';
import 'package:flutter/material.dart';

class TeamTabs extends StatelessWidget {
  const TeamTabs({
    required this.leftName,
    required this.rightName,
    required this.controller,
    super.key,
  });

  final String leftName;
  final String rightName;
  final TabController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverPersistentHeader(
      pinned: true,
      delegate: PersistentHeader(
        child: ColoredBox(
          color: theme.canvasColor,
          child: TabBar(
            indicatorColor: Theme.of(context).primaryColor,
            controller: controller,
            labelColor: theme.textTheme.titleLarge?.color,
            indicatorWeight: 4,
            labelStyle: const TextStyle(fontSize: 16),
            unselectedLabelColor: theme.textTheme.displaySmall?.color,
            tabs: [
              Tab(text: leftName),
              Tab(text: rightName),
            ],
          ),
        ),
      ),
    );
  }
}
