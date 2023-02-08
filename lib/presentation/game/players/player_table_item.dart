import 'package:basketball/domain/entities/player.dart';
import 'package:basketball/presentation/widgets/table_item_widget.dart';
import 'package:basketball/presentation/widgets/title.dart';
import 'package:flutter/material.dart';

class PlayerTableItem extends StatelessWidget {
  const PlayerTableItem({
    required this.player,
    super.key,
  });

  final Player player;

  @override
  Widget build(BuildContext context) {
    return TableItemWidget(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 30,
            child: Text(
              player.number.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CircleAvatar(
              backgroundColor: Colors.grey[200],
              backgroundImage: player.imagePath.isNotEmpty
                  ? NetworkImage(player.imagePath)
                  : null,
              radius: 24,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BTitle(player.surname),
                BTitle(player.name),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
