import 'package:flutter/material.dart';

class GenderItem extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  final bool isSelected;

  const GenderItem({
    super.key,
    required this.onPressed,
    required this.label,
    required this.icon,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xff17172f) : const Color(0xff090b24),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 110),
            Text(
              label,
              style: const TextStyle(color: Color(0xff93969e), fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
