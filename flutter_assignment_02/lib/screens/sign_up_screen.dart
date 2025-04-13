import 'package:flutter/material.dart';
import 'package:flutter_assignment_02/screens/app_appbar.dart';
import 'package:flutter_assignment_02/screens/app_button.dart';
import 'package:flutter_assignment_02/screens/app_text_field.dart';
import 'package:flutter_assignment_02/screens/home_screen.dart';
import 'package:flutter_assignment_02/screens/log_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppAppbar(
        title: "Register",
        subtitle: "Please sign up to continue",
        onTapHome: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 29),
          child: Column(
            children: [
              AppTextField(
                label: "Name",
                placeholder: "Enter your full name",
                icon: Icons.person_outline,
              ),
              SizedBox(height: 16),
              AppTextField(
                label: "Email Address",
                placeholder: "Enter your email address",
                icon: Icons.email_outlined,
              ),
              SizedBox(height: 16),
              AppTextField(
                label: "Password",
                placeholder: "Enter your password",
                icon: Icons.password_outlined,
              ),
              SizedBox(height: 16),
              AppTextField(
                label: "Confirm Password",
                placeholder: "Enter your password",
                icon: Icons.password_outlined,
              ),
              SizedBox(height: 29),
              AppButton(text: "Sign up"),
              Padding(
                padding: const EdgeInsets.only(top: 39, bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF172F53),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogInScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Login now",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF172F53),
                        ),
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
