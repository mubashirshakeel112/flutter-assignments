import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final String placeholder;
  final IconData icon;
  const AppTextField({
    super.key,
    required this.label,
    required this.placeholder,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            height: 0,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF172F53),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          cursorColor: Color(0xFF001A72),
          decoration: InputDecoration(
            prefixIcon: Icon(icon, size: 27, color: Color(0xFF001A72)),
            isDense: true,
            contentPadding: EdgeInsets.only(top: 21.5, bottom: 21.5, left: 55),
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Color(0xFF172F53),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Color(0xFFEEEEEE)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Color(0xFFEEEEEE)),
            ),
          ),
        ),
      ],
    );
  }
}
