import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CountryCodeTextfield extends StatelessWidget {
  const CountryCodeTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          IntlPhoneField(
            cursorColor: Color(0xFF7C7C7C),
            textAlignVertical: TextAlignVertical(y: 0),
            showDropdownIcon: false,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.zero,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2)),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2)),
              ),
            ),
            initialCountryCode: 'PK', // Default country
            onChanged: (phone) {
              print('Complete Number: ${phone.completeNumber}');
            },
          ),
        ],
      ),
    );
  }
}
