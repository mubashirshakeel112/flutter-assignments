import 'package:flutter/material.dart';
import 'package:meezan_bank_ui/components/app_button.dart';
import 'package:meezan_bank_ui/components/bank_card.dart';
import 'package:meezan_bank_ui/screens/home_screen.dart';

class TransectionScreen extends StatelessWidget {
  const TransectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 116.5,
            bottom: 41,
          ),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/transection_circle.png",
                  width: 180,
                  height: 200,
                ),
                SizedBox(height: 24.5),
                Text(
                  "Your Transection Was",
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge?.copyWith(color: Color(0xFF5F2585)),
                ),
                Text(
                  "Successfully",
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge?.copyWith(color: Color(0xFF5F2585)),
                ),
                SizedBox(height: 36),
                // Text.rich(
                //   TextSpan(
                //     children: [
                //       TextSpan(text: "Rs. "),
                //       TextSpan(
                //         text: "32,00",
                //         style: Theme.of(context).textTheme.headlineLarge
                //             ?.copyWith(color: Color(0xFF000000)),
                //       ),
                //     ],
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rs. ",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Color(0xFF000000),
                      ),
                    ),
                    Text(
                      "32,00",
                      style: Theme.of(context).textTheme.headlineLarge
                          ?.copyWith(color: Color(0xFF000000)),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  "Transferred to",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Color(0xFF737373),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 34),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFF000000),
                      ),
                    ),
                    subTitle: Text(
                      "198765470754",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFF000000),
                      ),
                    ),
                    description: Text(
                      "EasyPaisa - Telenor Bank",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFF737373),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 56),
                AppButton(
                  bgColor: Color(0xFFFFFFFF),
                  borderColor: Color(0xFF5F2585),
                  textColor: Color(0xFF5F2585),
                  btnText: "Share receipt",
                  function: () {},
                ),
                SizedBox(height: 16),
                AppButton(
                  bgColor: Color(0xFF5F2585),
                  borderColor: Colors.transparent,
                  textColor: Color(0xFFFFFFFF),
                  btnText: "Okay",
                  function: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
