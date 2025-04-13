import 'package:flutter/material.dart';
import 'package:flutter_assignment_02/screens/app_appbar.dart';
import 'package:flutter_assignment_02/screens/app_button.dart';
import 'package:flutter_assignment_02/screens/app_text_field.dart';
import 'package:flutter_assignment_02/screens/home_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        title: "Forgot Password",
        subtitle: "Please sign in to continue",
        onTapArrowBack: () {
          Navigator.pop(context);
        },
        onTapHome: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTextField(
              label: "Email Address",
              placeholder: "Enter your email address",
              icon: Icons.email_outlined,
            ),
            SizedBox(height: 28),
            AppButton(text: "Send Email"),
          ],
        ),
      ),
    );
  }
}
