import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final int size;
  final String text;
  final Color color;

  const AppText({
    super.key,
    this.size = 16,
    required this.text,
    this.color = Colors.yellow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size.toDouble(),

      ),
    );
  }
}
