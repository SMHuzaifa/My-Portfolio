import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isHovered;
  final bool isSelected;
  final VoidCallback onEnter;
  final VoidCallback onExit;
  final VoidCallback onTap;

  const MenuItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.isHovered,
    required this.isSelected,
    required this.onEnter,
    required this.onExit,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onEnter(),
      onExit: (_) => onExit(),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Icon(
                icon,
                size: 30,
                color: isSelected
                    ? Colors.blue
                    : (isHovered ? Colors.blue : Colors.white38),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              label,
              style: TextStyle(
                color: isSelected
                    ? Colors.white
                    : (isHovered ? Colors.white : Colors.white38),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
