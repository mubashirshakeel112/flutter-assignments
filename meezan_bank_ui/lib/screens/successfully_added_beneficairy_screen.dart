import 'package:flutter/material.dart';
import 'package:meezan_bank_ui/components/app_button.dart';
import 'package:meezan_bank_ui/screens/send_money_account_screen.dart';

class SuccessfullyAddedBeneficairyScreen extends StatelessWidget {
  const SuccessfullyAddedBeneficairyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/check_circle.png",
                width: 125,
                height: 125,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 28.5),
              Text(
                "Beneficiary Was Added",
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge?.copyWith(color: Color(0xFF5F2585)),
              ),
              Text(
                "Successfully!",
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge?.copyWith(color: Color(0xFF5F2585)),
              ),
              SizedBox(height: 198),
              AppButton(
                bgColor: Color(0xFFFFFFFF),
                borderColor: Color(0xFF5F2585),
                textColor: Color(0xFF5F2585),
                btnText: "Pay now",
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SendMoneyAccountScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 16),
              AppButton(
                bgColor: Color(0xFF5F2585),
                borderColor: Colors.transparent,
                textColor: Color(0xFFFFFFFF),
                btnText: "Okay",
                function: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
