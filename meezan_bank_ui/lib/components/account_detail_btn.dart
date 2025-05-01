import 'package:flutter/material.dart';
import 'package:meezan_bank_ui/screens/select_bank_screen.dart';

class AccountDetailBtn extends StatelessWidget {
  final String btnText;
  final Color bgColor;
  final Color textColor;
  final Color borderColor;
  const AccountDetailBtn({
    super.key,
    required this.btnText,
    required this.bgColor,
    required this.textColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.only(top: 4, bottom: 4),
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: borderColor),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SelectBankScreen()),
          );
        },
        child: Text(
          btnText,
          style: Theme.of(
            context,
          ).textTheme.titleSmall?.copyWith(color: textColor),
        ),
      ),
    );
  }
}
