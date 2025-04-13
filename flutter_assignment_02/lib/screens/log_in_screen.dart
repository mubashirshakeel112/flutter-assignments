import 'package:flutter/material.dart';
import 'package:flutter_assignment_02/screens/app_appbar.dart';
import 'package:flutter_assignment_02/screens/app_button.dart';
import 'package:flutter_assignment_02/screens/app_text_field.dart';
import 'package:flutter_assignment_02/screens/forget_password_screen.dart';
import 'package:flutter_assignment_02/screens/home_screen.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        title: "Login",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextField(
                label: "Email Address",
                placeholder: "Enter your email address",
                icon: Icons.email_outlined,
              ),
              SizedBox(height: 18),
              AppTextField(
                label: "Password",
                placeholder: "Enter your password",
                icon: Icons.password_outlined,
              ),
              SizedBox(height: 13),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgetPasswordScreen(),
                    ),
                  );
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF172F53),
                  ),
                ),
              ),
              SizedBox(height: 48),
              AppButton(text: "Sign in"),
              Padding(
                padding: const EdgeInsets.only(top: 203, bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account? ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF172F53),
                      ),
                    ),
                    Text(
                      "Register now",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF172F53),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
