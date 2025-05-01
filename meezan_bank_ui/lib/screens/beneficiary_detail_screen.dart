import 'package:flutter/material.dart';
import 'package:meezan_bank_ui/components/app_appbar.dart';
import 'package:meezan_bank_ui/components/app_button.dart';
import 'package:meezan_bank_ui/components/app_text_feild.dart';
import 'package:meezan_bank_ui/screens/successfully_added_beneficairy_screen.dart';

class BeneficiaryDetailScreen extends StatelessWidget {
  const BeneficiaryDetailScreen({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Beneficiary details",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 9),
              beneficiaryDetailBox(
                context: context,
                title: "Beneficiary Bank",
                subTitle: "EasyPaisa - Telenor Bank",
              ),
              beneficiaryDetailBox(
                context: context,
                title: "Branch",
                subTitle: "Ghazi",
              ),
              beneficiaryDetailBox(
                context: context,
                title: "Beneficiary name",
                subTitle: "Muhammad Yasir",
              ),
              beneficiaryDetailBox(
                context: context,
                title: "Beneficiary Account no",
                subTitle: "19873629274697",
              ),
              SizedBox(height: 28),
              AppTextFeild(hintText: "Type nickname"),
              SizedBox(height: 48),
              AppButton(
                 bgColor: Color(0xFF5F2585),
              borderColor: Colors.transparent,
              textColor: Color(0xFFFFFFFF),
                btnText: "Save beneficiary",
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => SuccessfullyAddedBeneficairyScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget beneficiaryDetailBox({
    required BuildContext context,
    required String title,
    required String subTitle,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Color(0xFFDFD3E7).withAlpha(50),
        border: Border.all(width: 1, color: Color(0xFFDFD3E7)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w400,
              color: Color(0xFF737373),
            ),
          ),
          SizedBox(height: 4),
          Text(
            subTitle,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(color: Color(0xFF000000)),
          ),
        ],
      ),
    );
  }
}
