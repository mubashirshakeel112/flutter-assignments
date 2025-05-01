import 'package:flutter/material.dart';
import 'package:meezan_bank_ui/components/app_appbar.dart';
import 'package:meezan_bank_ui/components/app_button.dart';
import 'package:meezan_bank_ui/components/bank_card.dart';
import 'package:meezan_bank_ui/screens/transection_screen.dart';

class ReviewPayScreen extends StatelessWidget {
  const ReviewPayScreen({super.key});

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
              "Review & Pay",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(color: Color(0xFF262626)),
            ),
            SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                border: Border.all(width: 1, color: Color(0xFFDFD3E7)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: Color(0xFF000000).withAlpha(12),
                    offset: Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    payDetail(
                      context: context,
                      label: "From",
                      img: "assets/images/meezan_bank_logo.png",
                      title: "Muhammad Yasir",
                      subTitle: "198732379479",
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xFF5F2585)),
                      ),
                    ),
                    payDetail(
                      context: context,
                      label: "Sending to",
                      img: "assets/images/easypaisa_logo.png",
                      title: "Irfan Malik",
                      subTitle: "198732379479",
                      desc: Text(
                        "EasyPaisa - Telenor Bank",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xFF5F2585)),
                      ),
                    ),
                    payDetail(
                      context: context,
                      label: "Amount",
                      img: "assets/images/meezan_bank_logo.png",
                      title: "Amount                     Rs. 32,00",
                      subTitle: "Bank Charges            Rs. 0.00",
                      desc: Text(
                        "Total Amount           Rs. 32,00",
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(color: Color(0xFF5F2585)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 48),
            AppButton(
              bgColor: Color(0xFF5F2585),
              borderColor: Colors.transparent,
              textColor: Color(0xFFFFFFFF),
              btnText: "Pay now",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransectionScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget payDetail({
  required BuildContext context,
  required String label,
  required String img,
  required String title,
  required String subTitle,
  Text? desc,
}) {
  return Padding(
    padding: EdgeInsets.only(left: 16, top: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Color(0xFF737373),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 14),
        BankCard(
          image: Image.asset(img, width: 48, height: 48),
          title: Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(color: Color(0xFF000000)),
          ),
          subTitle: Text(
            subTitle,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(color: Color(0xFF000000)),
          ),
          description: desc,
        ),
      ],
    ),
  );
}
