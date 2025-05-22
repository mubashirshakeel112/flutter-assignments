import 'package:flutter/material.dart';

class OutlineTextfield extends StatelessWidget {
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final String hintText;
  const OutlineTextfield({super.key, this.prefixIcon, this.suffixIcon, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFF2F3F2),
        hintText: hintText,
        hintStyle: Theme.of(
          context,
        ).textTheme.labelLarge?.copyWith(fontSize: 14),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
