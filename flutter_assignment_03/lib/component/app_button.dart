import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Function() function;
  const AppButton({super.key, required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size.fromHeight(45),
        backgroundColor: Color(0xFF4157FF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(56)),
      ),
      onPressed: function,
      child: Center(
        child: Text(
          text,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(color: Color(0xFFFFFFFF)),
        ),
      ),
    );
  }
}
