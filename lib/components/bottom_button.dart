import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const BottomButton({
    super.key, required this.title, required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Text(title,
          style: kLargeButtonStyle,),
      ),
    );
  }
}