import 'package:flutter/material.dart';
import 'package:meezan_bank_ui/components/app_appbar.dart';
import 'package:meezan_bank_ui/components/app_button.dart';
import 'package:meezan_bank_ui/components/app_text_feild.dart';
import 'package:meezan_bank_ui/screens/beneficiary_detail_screen.dart';

class AddBanaficiaryScreen extends StatelessWidget {
  const AddBanaficiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppAppbar(
        leadingIcon: Icons.arrow_back,
        trailingIcon: Icons.home_filled,
        text: Text(
          "Send money",
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(color: Color(0xFFFFFFFF)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add Beneficiary",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Container(
              margin: EdgeInsets.only(top: 16, bottom: 32),
              padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                border: Border.all(
                  width: 1,
                  color: Color(0xFFDFD3E7).withAlpha(50),
                ),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: Color(0xFF000000).withAlpha(12),
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      border: Border.all(width: 1, color: Color(0xFFDFD3E7)),
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "assets/images/easypaisa_logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 18),
                  Text(
                    "Easypaisa - Telenor Bank",
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: Color(0xFF000000)),
                  ),
                ],
              ),
            ),

            AppTextFeild(hintText: "Enter mobile number or IBAM"),
            SizedBox(height: 48),
            AppButton(
              bgColor: Color(0xFF5F2585),
              borderColor: Colors.transparent,
              textColor: Color(0xFFFFFFFF),
              btnText: "Next",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BeneficiaryDetailScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
