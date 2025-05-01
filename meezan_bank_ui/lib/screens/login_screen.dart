import 'package:flutter/material.dart';
import 'package:meezan_bank_ui/components/app_button.dart';
import 'package:meezan_bank_ui/components/app_text_feild.dart';
import 'package:meezan_bank_ui/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isselected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 50,
            bottom: 39,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/meezan_bank_logo.png",
                  width: 90,
                  height: 90,
                ),
              ),
              SizedBox(height: 44),
              AppTextFeild(hintText: "Username"),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget username",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 14,
                    color: Color(0xFF5F2585),
                  ),
                ),
              ),
              SizedBox(height: 24),
              AppTextFeild(hintText: "Password"),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget password",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 14,
                    color: Color(0xFF5F2585),
                  ),
                ),
              ),
              SizedBox(height: 28.5),
              Row(
                children: [
                  Checkbox(
                    activeColor: Color(0xFF5F2585),
                    side: BorderSide(width: 2, color: Color(0xFF5F2585)),
                    value: isselected,
                    onChanged: (value) {
                      setState(() {
                        isselected = value!;
                      });
                    },
                  ),
                  Text(
                    "Remember me",
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: Color(0xFF000000)),
                  ),
                ],
              ),
              SizedBox(height: 24),
              AppButton(
                bgColor: Color(0xFF5F2585),
                borderColor: Colors.transparent,
                textColor: Color(0xFFFFFFFF),
                btnText: "Login",
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              SizedBox(height: 48),
              Center(child: Image.asset("assets/images/fingerPrint.png")),
              SizedBox(height: 14),
              Center(
                child: Text(
                  "Login with touchID",
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(color: Color(0xFF000000)),
                ),
              ),
              SizedBox(height: 56),
              Center(
                child: Text.rich(
                  TextSpan(
                    text: "Don’t have an account ",
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall?.copyWith(color: Color(0xFF000000)),
                    children: [
                      TextSpan(
                        text: "Register",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Color(0xFF5F2585),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF5F2585),
                        ),
                      ),
                    ],
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
