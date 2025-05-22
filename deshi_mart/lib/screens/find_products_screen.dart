import 'package:deshi_mart/components/bottom_nav_bar.dart';
import 'package:deshi_mart/components/outline_textfield.dart';
import 'package:deshi_mart/screens/beverages_screen.dart';
import 'package:deshi_mart/screens/search_screen.dart';
import 'package:flutter/material.dart';

class FindProductsScreen extends StatelessWidget {
  FindProductsScreen({super.key});

  final List<Products> productItem = [
    Products(
      image: "assets/images/fruits_vegetables.png",
      title: "Frash Fruits & Vegetable",
      bgColor: Color(0xFF53B175).withAlpha(10),
      borderColor: Color(0xFF53B175).withAlpha(70),
    ),
    Products(
      image: "assets/images/cooking_oil.png",
      title: "Cooking Oil & Ghee",
      bgColor: Color(0xFFF8A44C).withAlpha(10),
      borderColor: Color(0xFFF8A44C).withAlpha(70),
    ),
    Products(
      image: "assets/images/meat_fish.png",
      title: "Meat & Fish",
      bgColor: Color(0xFFF7A593).withAlpha(25),
      borderColor: Color(0xFFF7A593),
    ),
    Products(
      image: "assets/images/snacks.png",
      title: "Bakery & Snacks",
      bgColor: Color(0xFFD3B0E0).withAlpha(25),
      borderColor: Color(0xFFD3B0E0),
    ),
    Products(
      image: "assets/images/dairy_egg.png",
      title: "Dairy & Eggs",
      bgColor: Color(0xFFFDE598).withAlpha(25),
      borderColor: Color(0xFFFDE598),
      onPressed: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => SearchScreen()),
        );
      },
    ),
    Products(
      image: "assets/images/beverages.png",
      title: "Beverages",
      bgColor: Color(0xFFB7DFF5).withAlpha(25),
      borderColor: Color(0xFFB7DFF5),
       onPressed: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => BeveragesScreen()),
        );
      },
    ),
    Products(
      image: "assets/images/beverages.png",
      title: "Beverages",
      bgColor: Color(0xFF836AF6).withAlpha(15),
      borderColor: Color(0xFF836AF6).withAlpha(50),
       onPressed: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => BeveragesScreen()),
        );
      },
    ),
    Products(
      image: "assets/images/beverages.png",
      title: "Beverages",
      bgColor: Color(0xFFD73B77).withAlpha(15),
      borderColor: Color(0xFFD73B77).withAlpha(50),
       onPressed: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => BeveragesScreen()),
        );
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 57),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Find Products",
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge?.copyWith(fontSize: 20),
              ),
            ),
            SizedBox(height: 30),
            OutlineTextfield(
              hintText: "Search Store",
              prefixIcon: Icon(
                Icons.search,
                size: 24,
                color: Color(0xFF181B19),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: productItem.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 174 / 189,
                ),
                padding: EdgeInsets.only(bottom: 10),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (productItem[index].onPressed != null) {
                        productItem[index].onPressed!(context);
                      } else {
                        return;
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: productItem[index].bgColor,
                        border: Border.all(
                          width: 1,
                          color: productItem[index].borderColor,
                        ),
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12,
                            spreadRadius: 0,
                            color: Color(0xFF000000).withAlpha(0),
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              productItem[index].image,
                              // fit: BoxFit.cover,
                              width: 93,
                            ),
                            SizedBox(height: 27),
                            Center(
                              child: Text(
                                productItem[index].title,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.labelLarge
                                    ?.copyWith(color: Color(0xFF181725)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(navbarIndex: 1),
    );
  }
}

class Products {
  final String image;
  final String title;
  final Color bgColor;
  final Color borderColor;
  final Function(BuildContext)? onPressed;

  Products({
    this.onPressed,
    required this.image,
    required this.title,
    required this.bgColor,
    required this.borderColor,
  });
}
