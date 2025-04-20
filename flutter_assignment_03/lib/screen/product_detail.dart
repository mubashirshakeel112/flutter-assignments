import 'package:flutter/material.dart';
import 'package:flutter_assignment_03/component/app_button.dart';
import 'package:flutter_assignment_03/component/package_price.dart';
import 'package:flutter_assignment_03/component/progress_indicator_row.dart';
import 'package:flutter_assignment_03/screen/add_to_cart.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 35,
            bottom: 39,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                dense: true,
                minVerticalPadding: 0,
                visualDensity: VisualDensity(vertical: -4),
                contentPadding: EdgeInsets.zero,
                leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xFF091C3F),
                    size: 24,
                  ),
                ),
                trailing: Wrap(
                  spacing: 18,
                  children: [
                    Image.asset(
                      "assets/images/notification.png",
                      color: Color(0xFF090F47),
                      width: 28,
                      height: 28,
                    ),
                    Image.asset(
                      "assets/images/shoping_bag.png",
                      width: 28,
                      height: 28,
                      color: Color(0xFF090F47),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9),
              Text(
                "Sugar Free Gold Low Calories",
                style: TextStyle(
                  fontFamily: "Overpass",
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF090F47),
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Etiam mollis metus non purus",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Container(
                margin: EdgeInsets.only(top: 14),
                height: 166,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "assets/images/sugar_free_product.png",
                  width: 141.36691284179688,
                  height: 169.855712890625,
                ),
              ),
              SizedBox(height: 8),
              Center(child: Image.asset("assets/images/dot_indicator.png")),
              ListTile(
                dense: true,
                minVerticalPadding: 0,
                visualDensity: VisualDensity(vertical: -4),
                contentPadding: EdgeInsets.only(top: 22),
                title: Row(
                  spacing: 4,
                  children: [
                    Text(
                      "Rs.99",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Color(0xFF000000).withAlpha(80),
                        decorationThickness: 1,
                        fontFamily: "Overpass",
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF090F47).withAlpha(50),
                      ),
                    ),
                    Text(
                      "Rs.56",
                      style: Theme.of(
                        context,
                      ).textTheme.titleLarge?.copyWith(fontSize: 18),
                    ),
                  ],
                ),
                subtitle: Text(
                  "Etiam mollis",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                trailing: Wrap(
                  spacing: 10,
                  children: [
                    Image.asset(
                      "assets/images/add_to_cart.png",
                      width: 16,
                      height: 16,
                    ),
                    Text(
                      "Add to cart",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFF006AFF),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 18, bottom: 9),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xFF000000).withAlpha(10),
                  ),
                ),
              ),
              Text(
                "Package size",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 12),
                child: Row(
                  spacing: 16,
                  children: [
                    PackagePrice(
                      backgroundColor: Color(0xFFFFA41B).withAlpha(5),
                      price: "Rs.106",
                      pallets: "500 pellets",
                      priceColor: Color(0xFFFFA41B),
                      palletsColor: Color(0xFFFFA41B),
                      borderColor: Color(0xFFFFA41B),
                    ),
                    PackagePrice(
                      backgroundColor: Color(0xFFF5F5F5),
                      price: "Rs.166",
                      pallets: "110 pellets",
                      priceColor: Color(0xFF090F47),
                      palletsColor: Color(0xFF090F47).withAlpha(75),
                      borderColor: Colors.transparent,
                    ),
                    PackagePrice(
                      backgroundColor: Color(0xFFF5F5F5),
                      price: "Rs.252",
                      pallets: "300 pellets",
                      priceColor: Color(0xFF090F47),
                      palletsColor: Color(0xFF090F47).withAlpha(75),
                      borderColor: Colors.transparent,
                    ),
                  ],
                ),
              ),
              Text(
                "Product Details",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 8),
              Text(
                "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 9),
              Text(
                "Ingredients",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 8),
              Text(
                "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9, bottom: 4),
                child: Row(
                  spacing: 25,
                  children: [
                    Text(
                      "Expiry Date",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      "25/12/2023",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              Row(
                spacing: 22,
                children: [
                  Text(
                    "Brand Name",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "Something",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              SizedBox(height: 47),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        spacing: 10,
                        children: [
                          Text(
                            "4.4",
                            style: Theme.of(
                              context,
                            ).textTheme.titleLarge?.copyWith(
                              color: Color(0xFF000000),
                              fontSize: 33,
                            ),
                          ),
                          Icon(Icons.star, color: Color(0xFFFFC000), size: 26),
                        ],
                      ),
                      SizedBox(height: 12),
                      Text(
                        "923 Ratings\nand 257 Reviews",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  RotatedBox(
                    quarterTurns: 1,
                    child: Container(
                      width: 95,
                      decoration: BoxDecoration(
                        // color: Color(0xFF000000).withAlpha(10),
                        border: Border.all(
                          width: 1,
                          color: Color(0xFF000000).withAlpha(10),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RatingRow(
                        starCount: "4",
                        progressIndicatorValue: 0.67,
                        trailingTextPer: "67%",
                      ),
                      RatingRow(
                        starCount: "4",
                        progressIndicatorValue: 0.2,
                        trailingTextPer: "20%",
                      ),
                      RatingRow(
                        starCount: "3",
                        progressIndicatorValue: 0.07,
                        trailingTextPer: "7%",
                      ),
                      RatingRow(
                        starCount: "2",
                        progressIndicatorValue: 0,
                        trailingTextPer: "0%",
                      ),
                      RatingRow(
                        starCount: "1",
                        progressIndicatorValue: 0.02,
                        trailingTextPer: "2%",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Icon(
                    Icons.star_rate_rounded,
                    color: Color(0xFFFFC000),
                    size: 16,
                  ),
                  SizedBox(width: 2),
                  Text("4.2", style: Theme.of(context).textTheme.titleMedium),
                  Spacer(),
                  Text(
                    "05- oct 2020",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                "Erric Hoffman",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 3),
              Text(
                "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 14),
              AppButton(
                text: "Go to Cart",
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddToCart()),
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
