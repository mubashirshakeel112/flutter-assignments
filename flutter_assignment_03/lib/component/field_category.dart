import 'package:flutter/material.dart';

class FieldCategory extends StatelessWidget {
  final Color topColor;
  final Color bottomColor;
  final String text;
  const FieldCategory({
    super.key,
    required this.text,
    required this.topColor,
    required this.bottomColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 73.1748275756836,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        color: Color(0xFFFFFFFF),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.57, left: 9.15, right: 9.15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 54.88111877441406,
              height: 58.775508880615234,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [topColor, bottomColor],
                ),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: 6.12),
            Text(
              text,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: 11,
                color: Color(0xFF090F47).withAlpha(95),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
