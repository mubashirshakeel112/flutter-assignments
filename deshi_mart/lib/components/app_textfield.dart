import 'package:flutter/material.dart';

class AppTextfield extends StatefulWidget {
  final String label;
  final String placeholder;
  final TextInputType keyboardStyle;
  final Icon? suffixIcon;
  bool showText = false;
  AppTextfield({
    super.key,
    this.showText = false,
    required this.label,
    required this.placeholder,
    required this.keyboardStyle,
    this.suffixIcon,
  });

  @override
  State<AppTextfield> createState() => _AppTextfieldState();
}

class _AppTextfieldState extends State<AppTextfield> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: Theme.of(context).textTheme.labelLarge),
        SizedBox(height: 10),
        TextField(
          obscureText: widget.showText,
          cursorColor: Color(0xFF7C7C7C),
          keyboardType: widget.keyboardStyle,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.only(bottom: 10),
            hintText: widget.placeholder,
            hintStyle: Theme.of(context).textTheme.titleMedium,
            suffixIconConstraints: BoxConstraints(maxHeight: 13),
            suffixIcon: widget.suffixIcon,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2)),
            ),
          ),
        ),
      ],
    );
  }
}
