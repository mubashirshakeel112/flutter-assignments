import 'package:deshi_mart/components/product_card.dart';
import 'package:deshi_mart/controllers/beverages_controller.dart';
import 'package:deshi_mart/controllers/product_controller.dart';
import 'package:deshi_mart/screens/filter_screen.dart';
import 'package:deshi_mart/screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BeveragesScreen extends StatelessWidget {
  final BeveragesController beveragesController = Get.put(
    BeveragesController(),
  );
  final ProductController productController = Get.put(ProductController());
  BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: GetBuilder<BeveragesController>(
        builder: (ctx) {
          return Column(
            children: [
              ListTile(
                horizontalTitleGap: 0,
                minLeadingWidth: 0,
                minTileHeight: 0,
                minVerticalPadding: 0,
                dense: true,
                contentPadding: EdgeInsets.only(top: 57, left: 18, right: 18),
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 18,
                    color: Color(0xFF181725),
                  ),
                ),
                title: Center(
                  child: Text(
                    "Beverages",
                    style: Theme.of(
                      context,
                    ).textTheme.headlineLarge?.copyWith(fontSize: 20),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FilterScreen()),
                    );
                  },
                  icon: ImageIcon(AssetImage("assets/images/filter.png")),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.only(
                    top: 29,
                    left: 25,
                    right: 25,
                    bottom: 10,
                  ),
                  itemCount: beveragesController.productDetail.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 173 / 248,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) {
                    return ProductCard(
                      onPressed: () {
                        productController.addBeverages(index);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => ProductScreen()),
                        );
                      },
                      image: beveragesController.productDetail[index].image,
                      title: beveragesController.productDetail[index].title,
                      subTitle:
                          beveragesController.productDetail[index].subTitle,
                      price: beveragesController.productDetail[index].price,
                      function: () {
                        beveragesController.addProduct(index);
                        beveragesController.addToCart();
                      },
                      icon: Icon(Icons.add, color: Color(0xFFFFFFFF)),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
