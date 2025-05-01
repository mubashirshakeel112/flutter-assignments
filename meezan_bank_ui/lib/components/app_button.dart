import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String btnText;
  final Function() function;
  final Color bgColor;
  final Color borderColor;
  final Color textColor;
  const AppButton({
    super.key,
    required this.btnText,
    required this.function,
    required this.bgColor,
    required this.borderColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: bgColor,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      onPressed: () {
        function();
      },
      child: Center(
        child: Text(
          btnText,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(color: textColor),
        ),
      ),
    );
  }
}
