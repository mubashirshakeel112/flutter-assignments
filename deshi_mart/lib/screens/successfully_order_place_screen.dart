import 'package:deshi_mart/components/app_button.dart';
import 'package:deshi_mart/screens/home_screen.dart';
import 'package:deshi_mart/screens/order_status_screen.dart';
import 'package:flutter/material.dart';

class SuccessfullyOrderPlaceScreen extends StatelessWidget {
  const SuccessfullyOrderPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.only(top: 152, bottom: 63),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/success_check.png",
                width: 270,
                height: 240,
              ),
              SizedBox(height: 66),
              Text(
                "Your Order has been\naccepted",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 20),
              Text(
                "Your items has been placed and is on\nit’s way to being processed",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: AppButton(
                  bgColor: Color(0xFF53B175),
                  title: "Track Order",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderStatusScreen(),
                      ),
                    );
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text(
                  "Back to home",
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(color: Color(0xFF181725)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
