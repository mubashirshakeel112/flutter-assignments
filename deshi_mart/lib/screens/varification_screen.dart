import 'package:deshi_mart/components/app_textfield.dart';
import 'package:deshi_mart/screens/select_location_screen.dart';
import 'package:flutter/material.dart';

class VarificationScreen extends StatelessWidget {
  const VarificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: Padding(
        padding: const EdgeInsets.only(top: 56, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_ios,
                size: 18,
                color: Color(0xFF181725),
              ),
            ),
            SizedBox(height: 65),
            Text(
              "Enter your 4-digit code",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 27),
            AppTextfield(
              label: "Code",
              placeholder: "- - - -",
              keyboardStyle: TextInputType.phone,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Resend Code",
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(color: Color(0xFF53B175)),
            ),
            FloatingActionButton(
              backgroundColor: Color(0xFF53B175),
              shape: CircleBorder(),
              elevation: 0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectLocationScreen(),
                  ),
                );
              },
              child: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFFFF9FF),
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
