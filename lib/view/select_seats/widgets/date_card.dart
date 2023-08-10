import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class SelectSeatsDateCard extends StatelessWidget {
  const SelectSeatsDateCard({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 67,
      height: 32,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: ShapeDecoration(
        color: isSelected ? const Color(0xFF61C3F2) : offWhiteGray,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontSize: 12,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: 1.67,
        ),
      ),
    );
  }
}
