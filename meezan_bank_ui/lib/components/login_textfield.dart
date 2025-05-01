import 'package:flutter/material.dart';

class LoginTextfield extends StatelessWidget {
  final String fieldText;
  final String forgetText;
  const LoginTextfield({
    super.key,
    required this.fieldText,
    required this.forgetText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: fieldText,
            hintStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: 14,
              color: Color(0xFFA3A3A3),
            ),
            contentPadding: EdgeInsets.only(top: 13, bottom: 13, left: 14),
            isDense: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xFFD4D4D4)),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          forgetText,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontSize: 14,
            color: Color(0xFF5F2585),
          ),
        ),
      ],
    );
  }
}
