import 'package:deshi_mart/components/app_button.dart';
import 'package:deshi_mart/components/bottom_nav_bar.dart';
import 'package:deshi_mart/controllers/cart_controller.dart';
import 'package:deshi_mart/screens/successfully_order_place_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCartScreen extends StatelessWidget {
  final CartController cartController = Get.put(CartController());
  final List<ModelSheetData> modelData = [
    ModelSheetData(
      title: "Delivery",
      item: Text(
        "Select Method",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xFF181725),
        ),
      ),
      icon: Icons.arrow_forward_ios_rounded,
    ),
    ModelSheetData(
      title: "Pament",
      item: Image.asset(
        "assets/images/payment_card.png",
        width: 21,
        height: 16,
      ),
      icon: Icons.arrow_forward_ios_rounded,
    ),
    ModelSheetData(
      title: "Promo Code",
      item: Text(
        "Pick discount",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xFF181725),
        ),
      ),
      icon: Icons.arrow_forward_ios_rounded,
    ),
    ModelSheetData(
      title: "Total Cost",
      item: Text(
        "13.97",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xFF181725),
        ),
      ),
      icon: Icons.arrow_forward_ios_rounded,
    ),
  ];
  MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: GetBuilder<CartController>(
        builder: (ctx) {
          return Padding(
            padding: const EdgeInsets.only(top: 55),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "My Cart",
                    style: Theme.of(
                      context,
                    ).textTheme.headlineLarge?.copyWith(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 32),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xFFE2E2E2)),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 25, right: 25, bottom: 71),
                    itemCount: cartController.cart.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 130,
                        margin: EdgeInsets.only(top: 30),
                        padding: EdgeInsets.only(bottom: 30),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Color(0xFFE2E2E2),
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              cartController.cart[index].image,
                              width: 70,
                              height: 64,
                            ),
                            SizedBox(width: 32),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cartController.cart[index].title,
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(color: Color(0xFF181725)),
                                ),
                                Text(
                                  cartController.cart[index].subTitle,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                SizedBox(height: 12),
                                Row(
                                  spacing: 17,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 45,
                                      height: 45,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          padding: EdgeInsets.zero,
                                          backgroundColor: Color(0xFFFFFFFF),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              width: 1,
                                              color: Color(0xFFF0F0F0),
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              17,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          cartController.decrement(index);
                                        },
                                        child: Icon(
                                          Icons.minimize,
                                          size: 25,
                                          color: Color(0xFFB3B3B3),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      cartController.cart[index].quantitiy
                                          .toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(color: Color(0xFF181725)),
                                    ),
                                    SizedBox(
                                      width: 45,
                                      height: 45,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          padding: EdgeInsets.zero,
                                          backgroundColor: Color(0xFFFFFFFF),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              width: 1,
                                              color: Color(0xFFF0F0F0),
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              17,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          cartController.increment(index);
                                        },
                                        child: Icon(
                                          Icons.add,
                                          size: 25,
                                          color: Color(0xFF53B175),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    cartController.removeCartItem(index);
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    color: Color(0xFFB3B3B3),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ImageIcon(
                                        AssetImage("assets/images/dollar.png"),
                                        size: 15,
                                        color: Color(0xFF000000),
                                      ),
                                      Text(
                                        cartController.cart[index].price
                                            .toString(),
                                        style: Theme.of(
                                          context,
                                        ).textTheme.titleLarge?.copyWith(
                                          color: Color(0xFF181725),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 0),
        child: AppButton(
          bgColor: Color(0xFF53B175),
          title: "Go to Checkout",
          onTap: () {
            settingModalBottomSheet(context);
          },
        ),
      ),
      bottomNavigationBar: BottomNavBar(navbarIndex: 2),
    );
  }

  void settingModalBottomSheet(context) {
    showModalBottomSheet(
      backgroundColor: Color(0xFFFFFFFF),
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 30, left: 25, right: 25),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xFFE2E2E2)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Checkout",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineLarge?.copyWith(fontSize: 24),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.close, color: Color(0xFF181725)),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 30),
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: modelData.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.only(bottom: 20, top: 20),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Color(0xFFE2E2E2),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  modelData[index].title,
                                  style: Theme.of(context).textTheme.titleLarge
                                      ?.copyWith(color: Color(0xFF7C7C7C)),
                                ),
                              ),
                              modelData[index].item,
                              SizedBox(width: 15),
                              Icon(modelData[index].icon, size: 14),
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            style: Theme.of(context).textTheme.titleSmall
                                ?.copyWith(color: Color(0xFF7C7C7C)),
                            text: "By placing an order you agree to our \n",
                          ),
                          TextSpan(
                            style: Theme.of(context).textTheme.titleSmall
                                ?.copyWith(color: Color(0xFF000000)),
                            text: "Terms ",
                          ),
                          TextSpan(
                            style: Theme.of(context).textTheme.titleSmall
                                ?.copyWith(color: Color(0xFF7C7C7C)),
                            text: "And ",
                          ),
                          TextSpan(
                            style: Theme.of(context).textTheme.titleSmall
                                ?.copyWith(color: Color(0xFF000000)),
                            text: "Conditions",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    AppButton(
                      bgColor: Color(0xFF53B175),
                      title: "Place Order",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => SuccessfullyOrderPlaceScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ModelSheetData {
  String title;
  Widget item;
  IconData icon;

  ModelSheetData({required this.title, required this.item, required this.icon});
}
