import 'package:deshi_mart/components/app_button.dart';
import 'package:deshi_mart/components/app_textfield.dart';
import 'package:deshi_mart/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SelectLocationScreen extends StatelessWidget {
  const SelectLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 18,
                height: 18,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 18,
                    color: Color(0xFF181725),
                  ),
                ),
              ),
              SizedBox(height: 44),
              Center(
                child: Image.asset(
                  "assets/images/google_map.png",
                  width: 224,
                  height: 170,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Text(
                  "Select Your Location",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Swithch on your location to stay in tune with\nwhat’s happening in your area",
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 89),
              AppTextfield(
                label: "Your Zone",
                placeholder: "Enter your zone",
                keyboardStyle: TextInputType.text,
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 25,
                  weight: 900,
                  color: Color(0xFF7C7C7C),
                ),
              ),
              SizedBox(height: 30),
              AppTextfield(
                label: "Your Area",
                placeholder: "Types of your area",
                keyboardStyle: TextInputType.text,
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Color(0xFF7C7C7C),
                  size: 25,
                  weight: 900,
                ),
              ),
              SizedBox(height: 40),
              AppButton(
                bgColor: Color(0xFF53B175),
                title: "Submit",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
