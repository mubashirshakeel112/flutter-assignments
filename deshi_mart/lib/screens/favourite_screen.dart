import 'package:deshi_mart/components/app_button.dart';
import 'package:deshi_mart/components/bottom_nav_bar.dart';
import 'package:deshi_mart/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatelessWidget {
  // final CartController cartController = Get.put(CartController());
  final ProductController productController = Get.put(ProductController());
  FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.only(top: 55),
        child: Column(
          children: [
            Text(
              "Favourite",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(fontSize: 20),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: productController.favouriteCart.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 32),
                    padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1, color: Color(0xFFE2E2E2)),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          productController.favouriteCart[index].image,
                          width: 70,
                          height: 64,
                        ),
                        SizedBox(width: 32),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productController.favouriteCart[index].title,
                              // cartController.cart[index].title,
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(color: Color(0xFF181725)),
                            ),
                            Text(
                              productController.favouriteCart[index].subTitle,
                              // cartController.cart[index].subTitle,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            ImageIcon(
                              AssetImage("assets/images/dollar.png"),
                              size: 15,
                              color: Color(0xFF000000),
                            ),
                            Text(
                              "${productController.favouriteCart[index].price}",
                              style: Theme.of(context).textTheme.titleLarge
                                  ?.copyWith(color: Color(0xFF181725)),
                            ),
                            SizedBox(width: 15),
                            GestureDetector(
                              onTap: () {
                                dialogBox(context);
                              },
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xFF181725),
                                size: 18,
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
      ),
      bottomNavigationBar: BottomNavBar(navbarIndex: 3),
    );
  }

  dialogBox(BuildContext context) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color(0xFFFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          icon: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.close),
            ),
          ),
          iconPadding: EdgeInsets.only(left: 10, top: 26),
          contentPadding: EdgeInsets.only(top: 18),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/dialog_box_img.png",
                width: 222,
                height: 222,
              ),
              SizedBox(height: 40),
              Text(
                "Oops! Order Failed",
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge?.copyWith(fontSize: 28),
              ),
              SizedBox(height: 20),
              Text(
                "Something went tembly wrong.",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          actions: [
            AppButton(
              bgColor: Color(0xFF53B175),
              title: "Please Try Again",
              onTap: () {},
            ),
            AppButton(
              btnTextColor: Color(0xFF181725),
              bgColor: Colors.white,
              title: "Back to home",
              onTap: () {},
            ),
          ],
          actionsPadding: EdgeInsets.only(left: 25, right: 25, top: 60),
        );
      },
    );
  }
}
