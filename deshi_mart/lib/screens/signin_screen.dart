import 'package:deshi_mart/components/app_button.dart';
import 'package:deshi_mart/components/country_code_textfield.dart';
import 'package:deshi_mart/screens/number_screen.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: ListView(
        padding: EdgeInsets.zero,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset("assets/images/601 1.png", fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get your groceries\nwith nectar",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: 30),
                CountryCodeTextfield(),
                SizedBox(height: 40),
                Center(
                  child: Text(
                    "Or connect with social media",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 37),
                AppButton(
                  alignment: Alignment.centerLeft,
                  title: "Continue with Google",
                  padding: EdgeInsets.only(left: 35, right: 40),
                  icon: Image(
                    image: AssetImage("assets/images/google_logo.png"),
                    width: 22,
                    height: 24,
                    fit: BoxFit.contain,
                    color: Color(0xFFFFFFFF),
                  ),
                  bgColor: Color(0xFF5383EC),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NumberScreen()),
                    );
                  },
                ),
                SizedBox(height: 20),
                AppButton(
                  alignment: Alignment.centerLeft,
                  title: "Continue with Facebook",
                  padding: EdgeInsets.only(left: 35, right: 40),
                  icon: Image(
                    image: AssetImage("assets/images/facebook_logo.png"),
                    width: 22,
                    height: 24,
                    fit: BoxFit.contain,
                    color: Color(0xFFFFFFFF),
                  ),
                  bgColor: Color(0xFF4A66AC),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
