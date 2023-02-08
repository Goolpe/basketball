import 'package:flutter/material.dart';

class AdBanner extends StatelessWidget {
  const AdBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 16, 16, 16),
      alignment: Alignment.center,
      child: Stack(
        children: [
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned.fill(
            left: 4,
            top: 8,
            child: Container(
              height: 40,
              transform: Matrix4.skewX(-.3),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Positioned.fill(
            right: 8,
            bottom: 8,
            child: Container(
              height: 40,
              transform: Matrix4.skewX(-.3),
              decoration: BoxDecoration(
                color: Colors.orange[900],
              ),
            ),
          ),
          const Positioned.fill(
            bottom: 4,
            child: Center(
              child: Text(
                'PARI ТАБЛИЦА',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
