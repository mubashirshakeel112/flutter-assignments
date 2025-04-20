import 'package:flutter/material.dart';
import 'package:flutter_assignment_03/component/app_button.dart';
import 'package:flutter_assignment_03/component/payment_summary.dart';
import 'package:flutter_assignment_03/component/shopping_cart.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 40,
            bottom: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 16,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 24,
                      color: Color(0xFF090F47),
                    ),
                  ),
                  Text(
                    "Your cart",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              SizedBox(height: 34),
              Row(
                children: [
                  Text(
                    "2 Items in your cart",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Spacer(),
                  Icon(Icons.add, size: 18, color: Color(0xFF4157FF)),
                  SizedBox(width: 11),
                  Text(
                    "Add more",
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: Color(0xFF4157FF)),
                  ),
                ],
              ),
              SizedBox(height: 22),
              ShoppingCart(
                image: "assets/images/medicine_bottle_1.png",
                title: "Sugar free gold",
                subTitle: "bottle of 500 pellets",
                price: "Rs.25",
              ),
              ShoppingCart(
                image: "assets/images/medicine_bottle_2.png",
                title: "Sugar free gold",
                subTitle: "bottle of 500 pellets",
                price: "Rs.18",
              ),
              SizedBox(height: 138),
              Text(
                "Payment Summary",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              PaymentSummary(text: "Order Total", price: "228.80"),
              PaymentSummary(text: "Items Discount", price: "- 28.80"),
              PaymentSummary(text: "Coupon Discount", price: "-15.80"),
              PaymentSummary(text: "Shipping", price: "Free"),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "Rs.185.00",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              SizedBox(height: 38),
              AppButton(text: "Place Order", function: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
