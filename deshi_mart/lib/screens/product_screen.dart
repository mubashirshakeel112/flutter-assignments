import 'package:deshi_mart/components/app_button.dart';
import 'package:deshi_mart/controllers/cart_controller.dart';
import 'package:deshi_mart/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  CartController cartController = Get.put(CartController());
  ProductController productController = Get.put(ProductController());
  bool isExpended = false;

  @override
  Widget build(BuildContext context) {
    List<ProFeatures> productFeatures = [
      ProFeatures(
        title: "Product Detail",
        // subtitle: ""
        subtitle: productController.newCart!.productdesc ?? "",
      ),
      ProFeatures(title: "Nutrition", subtitle: ""),
      ProFeatures(title: "Review", subtitle: ""),
    ];
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: GetBuilder<ProductController>(
        builder: (ctx) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF2F3F2),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.only(
                        top: 56,
                        left: 25,
                        right: 25,
                      ),
                      minLeadingWidth: 0,
                      minTileHeight: 0,
                      leading: GestureDetector(onTap: () => Navigator.pop(context),child: Icon(Icons.arrow_back_ios_new, size: 18, color: Color(0xFF181725),)),
                      trailing: ImageIcon(
                        AssetImage("assets/images/logout_upward.png"),
                        size: 18,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 28,
                        left: 42,
                        right: 42,
                        bottom: 69,
                      ),
                      child: Image.asset(
                        productController.newCart!.image,
                        height: 199,
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     top: 28,
                    //     left: 42,
                    //     right: 42,
                    //     bottom: 69,
                    //   ),
                    //   child: ListView.builder(
                    //     shrinkWrap: true,
                    //     physics: NeverScrollableScrollPhysics(),
                    //     padding: EdgeInsets.zero,
                    //     itemCount: 1,
                    //     itemBuilder: (context, index) {
                    //       return Image.asset(
                    //         productController.newCart!.image,
                    //         height: 199,
                    //       );
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                    left: 25,
                    right: 25,
                  ),
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 1,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          padding: EdgeInsets.only(bottom: 30),
                          decoration: BoxDecoration(
                            // border: Border(
                            //   bottom: BorderSide(
                            //     width: 1,
                            //     color: Color(0xFFE2E2E2),
                            //   ),
                            // ),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                titleAlignment: ListTileTitleAlignment.top,
                                contentPadding: EdgeInsets.zero,
                                minLeadingWidth: 0,
                                minTileHeight: 0,
                                minVerticalPadding: 0,
                                horizontalTitleGap: 0,
                                title: Text(
                                  productController.newCart!.title,
                                  style:
                                      Theme.of(context).textTheme.headlineLarge,
                                ),
                                subtitle: Text(
                                  productController.newCart!.subTitle,
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                                trailing: IconButton(
                                  onPressed: () {
                                    productController.addToFavourite();
                                  },
                                  icon: Icon(
                                    productController.favouriteCart.contains(
                                          productController.newCart,
                                        )
                                        ? Icons.favorite_outlined
                                        : Icons.favorite_border_rounded,
                                    color: Color(0xFF53B175),
                                  ),
                                ),
                              ),
                              GetBuilder<ProductController>(
                                builder: (ctx) {
                                  return ListTile(
                                    contentPadding: EdgeInsets.only(top: 30),
                                    minLeadingWidth: 0,
                                    minTileHeight: 0,
                                    horizontalTitleGap: 0,
                                    leading: Row(
                                      spacing: 20,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            productController
                                                .productDecrement();
                                          },
                                          icon: Icon(
                                            Icons.minimize,
                                            color: Color(0xFFB3B3B3),
                                          ),
                                        ),
                                        Container(
                                          width: 45,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Color(0xFFE2E2E2),
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              17,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "${productController.newCart?.quantitiy}",
                                              style: Theme.of(
                                                context,
                                              ).textTheme.labelLarge?.copyWith(
                                                color: Color(0xFF181725),
                                              ),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            productController
                                                .productIncrement();
                                          },
                                          icon: Icon(
                                            Icons.add,
                                            color: Color(0xFF53B175),
                                          ),
                                        ),
                                      ],
                                    ),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ImageIcon(
                                          AssetImage(
                                            "assets/images/dollar.png",
                                          ),
                                          size: 20,
                                          color: Color(0xFF000000),
                                        ),
                                        Text(
                                          "${productController.newCart!.price}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineLarge
                                              ?.copyWith(fontSize: 24),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: productFeatures.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.only(top: 18),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                width: 1,
                                color: Color(0xFFE2E2E2),
                              ),
                            ),
                          ),
                          child: ExpansionTile(
                            tilePadding: EdgeInsets.only(bottom: 10),
                            childrenPadding: EdgeInsets.only(bottom: 19),
                            dense: true,
                            minTileHeight: 0,
                            shape: RoundedRectangleBorder(
                              side: BorderSide.none,
                            ),
                            title: Text(
                              productFeatures[index].title,
                              style: Theme.of(context).textTheme.labelLarge
                                  ?.copyWith(color: Color(0xFF181725)),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  isExpended
                                      ? Icons.keyboard_arrow_down_outlined
                                      : Icons.keyboard_arrow_right_rounded,
                                  size: 25,
                                ),
                              ],
                            ),
                            onExpansionChanged: (value) {
                              setState(() {
                                isExpended = value;
                              });
                            },
                            children: <Widget>[
                              Text(
                                productFeatures[index].subtitle,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    AppButton(
                      bgColor: Color(0xFF53B175),
                      title: "Add To Basket",
                      onTap: () {
                        productController.addToBasket();
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class ProFeatures {
  String title;
  String subtitle;

  ProFeatures({required this.title, required this.subtitle});
}
