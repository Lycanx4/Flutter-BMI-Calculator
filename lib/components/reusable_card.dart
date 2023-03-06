import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final VoidCallback? cardOnPress;

  const ReusableCard(
      {super.key, required this.color, this.cardChild, this.cardOnPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cardOnPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
