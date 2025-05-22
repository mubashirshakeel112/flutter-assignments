import 'dart:ui';

import 'package:deshi_mart/components/country_code_textfield.dart';
import 'package:deshi_mart/screens/varification_screen.dart';
import 'package:flutter/material.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});

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
              "Enter your mobile number",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 27),
            Text(
              "Mobile Number",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(height: 0),
            CountryCodeTextfield(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF53B175),
        shape: CircleBorder(),
        elevation: 0,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VarificationScreen()),
          );
        },
        child: Icon(
          Icons.arrow_forward_ios,
          color: Color(0xFFFFF9FF),
          size: 18,
        ),
      ),
    );
  }
}
