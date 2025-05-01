import 'package:flutter/material.dart';

class AppTextFeild extends StatelessWidget {
  final String hintText;
  const AppTextFeild({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.only(
          left: 14,
          top: 13,
          bottom: 13,
          right: 10,
        ),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w400,
          color: Color(0xFFA3A3A3),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Color(0xFFD4D4D4)),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Color(0xFFD4D4D4)),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
