import 'package:deshi_mart/components/bottom_nav_bar.dart';
import 'package:deshi_mart/components/outline_textfield.dart';
import 'package:deshi_mart/components/product_card.dart';
import 'package:deshi_mart/controllers/product_controller.dart';
import 'package:deshi_mart/controllers/search_controller.dart';
import 'package:deshi_mart/screens/filter_screen.dart';
import 'package:deshi_mart/screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  final SearchControl searchController = Get.put(SearchControl());
  final ProductController productController = Get.put(ProductController());
  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48, left: 25, right: 18),
            child: Row(
              spacing: 10,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: OutlineTextfield(
                    hintText: "Search item",
                    prefixIcon: Icon(
                      Icons.search,
                      size: 24,
                      color: Color(0xFF181B19),
                    ),
                    suffixIcon: Icon(
                      Icons.cancel_rounded,
                      size: 15,
                      color: Color(0xFF7C7C7C),
                    ),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => FilterScreen()),
                    );
                  },
                  icon: ImageIcon(AssetImage("assets/images/filter.png")),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 173 / 248,
              ),
              padding: const EdgeInsets.only(
                top: 30,
                left: 25,
                right: 25,
                bottom: 10,
              ),
              itemCount: searchController.productDetail.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  onPressed: () {
                    productController.addSearchItems(index);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ProductScreen()),
                    );
                  },
                  image: searchController.productDetail[index].image,
                  title: searchController.productDetail[index].title,
                  subTitle: searchController.productDetail[index].subTitle,
                  price: searchController.productDetail[index].price,
                  function: () {
                    searchController.addSearchItem(index);
                    searchController.addToCart();
                  },
                  icon: Icon(Icons.add, color: Color(0xFFFFFFFF)),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(navbarIndex: 1),
    );
  }
}
