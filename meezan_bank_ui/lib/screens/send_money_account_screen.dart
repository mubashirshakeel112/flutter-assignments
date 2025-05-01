import 'package:flutter/material.dart';
import 'package:meezan_bank_ui/components/app_appbar.dart';
import 'package:meezan_bank_ui/components/app_button.dart';
import 'package:meezan_bank_ui/components/bank_card.dart';
import 'package:meezan_bank_ui/screens/review_pay_screen.dart';

class SendMoneyAccountScreen extends StatelessWidget {
  const SendMoneyAccountScreen({super.key});

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
              "From Account",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(color: Color(0xFF262626)),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFFDFD3E7).withAlpha(50),
                border: Border.all(width: 1, color: Color(0xFFDFD3E7)),
              ),
              child: BankCard(
                image: Image.asset(
                  "assets/images/meezan_bank_logo.png",
                  width: 75,
                  height: 75,
                ),
                title: Text(
                  "Muhammad Yasir",
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(color: Color(0xFF000000)),
                ),
                subTitle: Text(
                  "198732379479",
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(color: Color(0xFF000000)),
                ),
                description: Text(
                  "Balance : 53,000",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Color(0xFF5F2585),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                iconImg: "assets/images/arrow_downward.png",
              ),
            ),
            SizedBox(height: 24),
            Text(
              "From Account",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(color: Color(0xFF262626)),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFFDFD3E7).withAlpha(50),
                border: Border.all(width: 1, color: Color(0xFFDFD3E7)),
              ),
              child: BankCard(
                image: Image.asset(
                  "assets/images/easypaisa_logo.png",
                  width: 75,
                  height: 75,
                ),
                title: Text(
                  "Irfan Malik",
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(color: Color(0xFF000000)),
                ),
                subTitle: Text(
                  "198732379479",
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(color: Color(0xFF000000)),
                ),
                description: Text(
                  "EasyPaisa - Telenor Bank",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Color(0xFF737373),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                iconImg: "assets/images/arrow_downward.png",
              ),
            ),
            SizedBox(height: 24),
            Text(
              "Amount",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(color: Color(0xFF262626)),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 12),
              padding: EdgeInsets.only(left: 12, top: 21, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 1, color: Color(0xFFDFD3E7)),
              ),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "0.00 ",
                      style: Theme.of(context).textTheme.headlineLarge
                          ?.copyWith(color: Color(0xFF5F2585)),
                    ),
                    TextSpan(
                      text: "PKR",
                      style: Theme.of(context).textTheme.headlineLarge
                          ?.copyWith(color: Color(0xFF5F2585), fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            Text(
              "Enter an amount between Rs. 1 and Rs. 1,000,000.",
              style: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(color: Color(0xFF5F2585)),
            ),
            SizedBox(height: 48),
            AppButton(
              bgColor: Color(0xFF5F2585),
              borderColor: Colors.transparent,
              textColor: Color(0xFFFFFFFF),
              btnText: "Continue",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReviewPayScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
