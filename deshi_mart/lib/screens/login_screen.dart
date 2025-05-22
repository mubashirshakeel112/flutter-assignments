import 'package:deshi_mart/components/app_button.dart';
import 'package:deshi_mart/components/app_textfield.dart';
import 'package:deshi_mart/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              Text("Loging", style: Theme.of(context).textTheme.headlineLarge),
              SizedBox(height: 10),
              Text(
                "Enter your emails and password",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 40),
              AppTextfield(
                label: "Email",
                placeholder: "Enter your email",
                keyboardStyle: TextInputType.emailAddress,
              ),
              SizedBox(height: 30),
              AppTextfield(
                label: "Password",
                placeholder: "Enter your password",
                keyboardStyle: TextInputType.visiblePassword,
                suffixIcon: Icon(Icons.visibility_off_outlined),
                showText: true,
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 14,
                    color: Color(0xFF181725),
                  ),
                ),
              ),
              SizedBox(height: 30),
              AppButton(
                bgColor: Color(0xFF53B175),
                title: "Log In",
                onTap: () {},
              ),
              SizedBox(height: 20),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Don’t have an account? ",
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(color: Color(0xFF181725)),
                        ),
                        TextSpan(
                          text: "Singup",
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(color: Color(0xFF53B175)),
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
