import 'package:flutter/material.dart';
import 'package:flutter_assignment_03/component/app_button.dart';
import 'package:flutter_assignment_03/screen/home_screen.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 74,
                    height: 74,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF000000).withAlpha(30),
                          spreadRadius: 0,
                          blurRadius: 12,
                          offset: Offset(0, 11), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset("assets/images/logo.png"),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Quick Medical",
                    style: TextStyle(
                      fontFamily: "Overpass",
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF000000),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 43, right: 77, top: 86),
              width: 255,
              height: 48,
              child: Text(
                "Please Enter your Mobile Number to Login/Sign Up",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38, right: 38, top: 36),
              child: TextField(
                cursorColor: Color(0xFF000000),
                keyboardType: TextInputType.phone,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Color(0xFF090F47),
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(
                    left: 17,
                    right: 18,
                    top: 5,
                    bottom: 5,
                  ),
                  hintText: "+91 9265614292",
                  hintStyle: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(fontSize: 24),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xFF000000)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xFF000000)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22.4, top: 36),
              child: AppButton(
                text: "Continue",
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
