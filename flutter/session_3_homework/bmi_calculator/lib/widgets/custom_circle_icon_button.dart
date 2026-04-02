import 'package:flutter/material.dart';

class CustomCircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;
  final double padding;

  const CustomCircleIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconSize = 40,
    this.backgroundColor = const Color(0xff4b4e5f),
    this.iconColor = Colors.white,
    this.padding = 10,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: const CircleBorder(),
        padding: EdgeInsets.all(padding),
      ),
      onPressed: onPressed,
      icon: Icon(icon, color: iconColor, size: iconSize),
    );
  }
}
