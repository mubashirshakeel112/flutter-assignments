import 'package:flutter/material.dart';

class PackagePrice extends StatelessWidget {
  final Color backgroundColor;
  final String price;
  final String pallets;
  final Color priceColor;
  final Color palletsColor;
  final Color borderColor;
  const PackagePrice({
    super.key,
    required this.backgroundColor,
    required this.price,
    required this.pallets,
    required this.priceColor,
    required this.palletsColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 12),
      width: 79,
      height: 68,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(width: 1, color: borderColor),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            price,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(color: priceColor),
          ),
          Text(
            pallets,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: palletsColor,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}