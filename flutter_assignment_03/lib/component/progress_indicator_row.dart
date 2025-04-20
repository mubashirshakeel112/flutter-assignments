import 'package:flutter/material.dart';

class RatingRow extends StatelessWidget {
  final String starCount;
  final double progressIndicatorValue;
  final String trailingTextPer;
  const RatingRow({
    super.key,
    required this.starCount,
    required this.progressIndicatorValue,
    required this.trailingTextPer,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 9,
          child: Text(
            starCount,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 1, right: 8),
          child: Icon(
            Icons.star_rate_rounded,
            color: Color(0xFFFFD040),
            size: 16,
          ),
        ),
        SizedBox(
          width: 123,
          child: LinearProgressIndicator(
            backgroundColor: Color(0xFF000000).withAlpha(10),
            color: Color(0xFF4157FF),
            value: progressIndicatorValue,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        SizedBox(width: 8),
        Text(trailingTextPer, style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}
