import 'package:carousel_slider/carousel_slider.dart';
import 'package:deshi_mart/components/bottom_nav_bar.dart';
import 'package:deshi_mart/components/outline_textfield.dart';
import 'package:deshi_mart/components/product_card.dart';
import 'package:deshi_mart/controllers/cart_controller.dart';
import 'package:deshi_mart/controllers/product_controller.dart';
import 'package:deshi_mart/screens/find_products_screen.dart';
import 'package:deshi_mart/screens/product_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CartController cartController = Get.put(CartController());

  final ProductController productController = Get.put(ProductController());

  int current = 0;

  final List<Widget> carouselItems = [
    Carosel(),
    Carosel(),
    Carosel(),
    // Container(
    //   color: Color(0xFFF8A44C).withAlpha(70),
    //   // decoration: BoxDecoration(
    //   //   color: Color(0xFFF8A44C).withAlpha(70),
    //   //   border: Border.all(width: 1, color: Color(0xFFF2F3F2)),
    //   //   borderRadius: BorderRadius.circular(8),
    //   // ),
    //   child: Stack(
    //     fit: StackFit.expand,
    //     children: [
    //       Align(
    //         alignment: Alignment.topLeft,
    //         child: Image.asset("assets/images/small_leaf.png", height: 105),
    //       ),
    //       Align(
    //         alignment: Alignment.topRight,
    //         child: Image.asset("assets/images/sallet.png", width: 127),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.only(
    //           left: 5,
    //           top: 2,
    //           bottom: 2,
    //           // right: 32,
    //         ),
    //         child: Row(
    //           spacing: 18,
    //           children: [
    //             Image.asset(
    //               "assets/images/vegetables.png",
    //               width: 122,
    //               height: 105,
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.only(top: 36),
    //               child: Column(
    //                 children: [
    //                   Text(
    //                     "Fresh Vegetables",
    //                     style: GoogleFonts.aclonica(
    //                       fontSize: 20,
    //                       fontWeight: FontWeight.w400,
    //                       color: Color(0xFF030303),
    //                       letterSpacing: 0,
    //                     ),
    //                   ),
    //                   Text(
    //                     "Get Up To 40% OFF",
    //                     // style: Theme.of(
    //                     //   context,
    //                     // ).textTheme.titleSmall?.copyWith(
    //                     //   color: Color(0xFF53B175),
    //                     // ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       Align(
    //         alignment: Alignment.bottomRight,
    //         child: Image.asset("assets/images/sallet_leaf.png", width: 33),
    //       ),
    //     ],
    //   ),
    // ),
  ];

  final CarouselSliderController carouselController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 78,
        backgroundColor: Color(0xFFFFFFFF),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 67, left: 25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset("assets/images/carrot.png", width: 33, height: 38),
              SizedBox(width: 50),
              Icon(Icons.location_on, color: Color(0xFF181725), size: 25),
              Text(
                "Dhaka, Banassre",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Color(0xFF181725)),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 41,
            left: 25,
            right: 25,
            bottom: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OutlineTextfield(
                suffixIcon: Icon(
                  Icons.search,
                  size: 24,
                  color: Color(0xFF53B175),
                ),
                hintText: "Search Store",
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  // color: Color(0xFFF8A44C).withAlpha(70),
                  border: Border.all(width: 1, color: Color(0xFFF2F3F2)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CarouselSlider(
                        carouselController: carouselController,
                        items: carouselItems,
                        options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              current = index;
                            });
                          },
                          viewportFraction: 1,
                          height: 114,
                          autoPlay: false,
                          enlargeCenterPage: false,
                          scrollPhysics: BouncingScrollPhysics(),
                        ),
                      ),
                    ),
                    Positioned(
                      child: DotsIndicator(
                        dotsCount: carouselItems.length,
                        position:
                            current < carouselItems.length
                                ? current.toDouble()
                                : 0.0,
                        decorator: DotsDecorator(
                          spacing: EdgeInsets.all(5),
                          activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          activeSize: const Size(18.0, 5.0),
                          activeColor: Color(0xFF53B175),
                          size: Size(5, 5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exclusive Offer",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FindProductsScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "See all",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Color(0xFF53B175),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              GetBuilder<CartController>(
                builder: (context) {
                  return SizedBox(
                    height: 248,
                    child: ListView.separated(
                      itemCount: cartController.fruitsDetail.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return ProductCard(
                          onPressed: () {
                            productController.addfruit(index);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductScreen(),
                              ),
                            );
                          },
                          image: cartController.fruitsDetail[index].image,
                          title: cartController.fruitsDetail[index].title,
                          subTitle: cartController.fruitsDetail[index].subTitle,
                          price: cartController.fruitsDetail[index].price,
                          function: () {
                            cartController.addtocart(index);
                          },
                          icon: Icon(
                            Icons.add,
                            color: Color(0xFFFFFFFF),
                            size: 17,
                          ),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      separatorBuilder:
                          (BuildContext context, int index) =>
                              SizedBox(width: 15),
                    ),
                  );
                },
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Selling",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    "See all",
                    style: Theme.of(
                      context,
                    ).textTheme.labelLarge?.copyWith(color: Color(0xFF53B175)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 248,
                child: ListView.separated(
                  itemCount: cartController.vegDetail.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (ctx, index) {
                    return ProductCard(
                      onPressed: () {
                        productController.addVeg(index);
                        print(index);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductScreen(),
                          ),
                        );
                      },
                      image: cartController.vegDetail[index].image,
                      title: cartController.vegDetail[index].title,
                      subTitle: cartController.vegDetail[index].subTitle,
                      price: cartController.vegDetail[index].price,
                      function: () {
                        cartController.addvegtocart(index);
                      },
                      icon: Icon(Icons.add, color: Color(0xFFFFFFFF), size: 17),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  separatorBuilder:
                      (BuildContext context, int index) => SizedBox(width: 15),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Groceries",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    "See all",
                    style: Theme.of(
                      context,
                    ).textTheme.labelLarge?.copyWith(color: Color(0xFF53B175)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 15,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      height: 105,
                      padding: EdgeInsets.only(left: 19),
                      decoration: BoxDecoration(
                        color: Color(0xFFF8A44C).withAlpha(50),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        spacing: 15,
                        children: [
                          Image.asset(
                            "assets/images/pulses.png",
                            width: 71,
                            height: 71,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            "Pulses",
                            style: Theme.of(
                              context,
                            ).textTheme.titleLarge?.copyWith(
                              fontSize: 20,
                              color: Color(0xFF3E423F),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      height: 105,
                      padding: EdgeInsets.only(left: 19),
                      decoration: BoxDecoration(
                        color: Color(0xFF53B175).withAlpha(50),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        spacing: 15,
                        children: [
                          Image.asset(
                            "assets/images/rice.png",
                            width: 71,
                            height: 71,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            "Rice",
                            style: Theme.of(
                              context,
                            ).textTheme.titleLarge?.copyWith(
                              fontSize: 20,
                              color: Color(0xFF3E423F),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              SizedBox(
                height: 248,
                child: ListView.separated(
                  itemCount: cartController.meatDetail.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      onPressed: () {
                        productController.addmeat(index);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductScreen(),
                          ),
                        );
                      },
                      image: cartController.meatDetail[index].image,
                      title: cartController.meatDetail[index].title,
                      subTitle: cartController.meatDetail[index].subTitle,
                      price: cartController.meatDetail[index].price,
                      function: () {
                        cartController.addmeattocart(index);
                      },
                      icon: Icon(Icons.add, color: Color(0xFFFFFFFF)),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  separatorBuilder:
                      (BuildContext context, int index) => SizedBox(width: 15),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(navbarIndex: 0),
    );
  }
}

class Carosel extends StatelessWidget {
  const Carosel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF8A44C).withAlpha(70),
      // decoration: BoxDecoration(
      //   color: Color(0xFFF8A44C).withAlpha(70),
      //   border: Border.all(width: 1, color: Color(0xFFF2F3F2)),
      //   borderRadius: BorderRadius.circular(8),
      // ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset("assets/images/small_leaf.png", height: 105),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset("assets/images/sallet.png", width: 127),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
              top: 2,
              bottom: 2,
              // right: 32,
            ),
            child: Row(
              spacing: 18,
              children: [
                Image.asset(
                  "assets/images/vegetables.png",
                  width: 122,
                  height: 105,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 36),
                  child: Column(
                    children: [
                      Text(
                        "Fresh Vegetables",
                        style: GoogleFonts.aclonica(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF030303),
                          letterSpacing: 0,
                        ),
                      ),
                      Text(
                        "Get Up To 40% OFF",
                        // style: Theme.of(
                        //   context,
                        // ).textTheme.titleSmall?.copyWith(
                        //   color: Color(0xFF53B175),
                        // ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset("assets/images/sallet_leaf.png", width: 33),
          ),
        ],
      ),
    );
  }
}
