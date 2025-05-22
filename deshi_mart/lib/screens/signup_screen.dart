import 'package:deshi_mart/components/app_button.dart';
import 'package:deshi_mart/components/app_textfield.dart';
import 'package:deshi_mart/screens/home_screen.dart';
import 'package:deshi_mart/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 77),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/carrot.png",
                  width: 47,
                  height: 55,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 100),
              Text("Sign Up", style: Theme.of(context).textTheme.headlineLarge),
              Text(
                "Enter your credentials to continue",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 40),
              AppTextfield(
                label: "Username",
                placeholder: "Enter username",
                keyboardStyle: TextInputType.text,
              ),
              SizedBox(height: 30),
              AppTextfield(
                label: "Email",
                placeholder: "Enter your email",
                keyboardStyle: TextInputType.emailAddress,
                suffixIcon: Icon(Icons.check, color: Color(0xFF53B175)),
              ),
              SizedBox(height: 30),
              AppTextfield(
                label: "Password",
                placeholder: "Enter your password",
                keyboardStyle: TextInputType.text,
                suffixIcon: Icon(Icons.visibility_off_outlined),
                showText: true,
              ),
              SizedBox(height: 20),
              Wrap(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: "By continuing you agree to our "),
                        TextSpan(
                          text: "Terms of Service ",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                            color: Color(0xFF53B175),
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(text: "and "),
                        TextSpan(
                          text: "Privacy Policy.",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                            color: Color(0xFF53B175),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              AppButton(
                bgColor: Color(0xFF53B175),
                title: "Sing Up",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              SizedBox(height: 25),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have an account? ",
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(color: Color(0xFF030303)),
                        ),
                        TextSpan(
                          text: "Login",
                          style: Theme.of(
                            context,
                          ).textTheme.titleSmall?.copyWith(
                            color: Color(0xFF53B175),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
