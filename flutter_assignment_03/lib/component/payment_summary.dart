import 'package:flutter/material.dart';

class PaymentSummary extends StatelessWidget {
  final String text;
  final String price;
  const PaymentSummary({super.key, required this.text, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: Theme.of(context).textTheme.titleMedium),
          Text(
            price,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(color: Color(0xFF090F47)),
          ),
        ],
      ),
    );
  }
}
