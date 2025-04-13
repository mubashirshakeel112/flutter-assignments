import 'package:flutter/material.dart';
import 'package:flutter_assignment_02/screens/home_screen_button.dart';
import 'package:flutter_assignment_02/screens/product_category.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 56,
        flexibleSpace: ListTile(
          contentPadding: EdgeInsets.only(
            top: 6,
            right: 12,
            left: 16,
            bottom: 6,
          ),
          leading: SizedBox(
            width: 32,
            height: 32,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF2F2F2),
                    ),
                  ),
                ),
                Positioned(
                  top: 4,
                  left: 4,
                  right: 4,
                  bottom: 4,
                  child: Image.asset(
                    "assets/images/menu_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/app_bar_logo.png",
                  width: 38.78093338012695,
                  height: 31.02627182006836,
                ),
                SizedBox(width: 9),
                Text(
                  "Stylish",
                  style: GoogleFonts.libreCaslonText(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF4392F9),
                  ),
                ),
              ],
            ),
          ),
          trailing: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              "assets/images/avatar.png",
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 28, bottom: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 13, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ProductCategory(
                      image: "assets/images/beauty.png",
                      width: 56,
                      height: 56,
                      text: "Beauty",
                    ),

                    ProductCategory(
                      image: "assets/images/fashion.png",
                      width: 56,
                      height: 56,
                      text: "Fashion",
                    ),

                    ProductCategory(
                      image: "assets/images/kids.png",
                      width: 56,
                      height: 56,
                      text: "Kids",
                    ),

                    ProductCategory(
                      image: "assets/images/mens.png",
                      width: 56,
                      height: 56,
                      text: "Mens",
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 36),
                height: 189,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFFD6E86),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "50-40% OFF",
                        style: GoogleFonts.montserrat(
                          height: 1.2,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Now in (product)",
                        style: GoogleFonts.montserrat(
                          height: 1.2,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "All colours",
                        style: GoogleFonts.montserrat(
                          height: 1.2,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      SizedBox(height: 12),
                      HomeScreenButton(
                        text: "Shop Now",
                        width: 100,
                        height: 32,
                        backgroundColor: Color(0xFFFD6E86),
                        borderColor: Color(0xFFFFFFFF),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18, right: 18, top: 28),
                padding: EdgeInsets.only(left: 8, right: 12),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF4392F9),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                  minVerticalPadding: 0,
                  dense: true,
                  title: Text(
                    "Deal of the Day",
                    style: GoogleFonts.montserrat(
                      height: 0,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  subtitle: Text(
                    "22h 55m 20s remaining",
                    style: GoogleFonts.montserrat(
                      height: 0,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  trailing: HomeScreenButton(
                    text: "View all",
                    width: 89,
                    height: 28,
                    backgroundColor: Color(0xFF4392F9),
                    borderColor: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Container(
                height: 84,
                margin: EdgeInsets.only(left: 16, right: 16, top: 28),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 8, right: 65, top: 6),
                  visualDensity: VisualDensity(horizontal: 0),
                  leading: Image.asset(
                    "assets/images/special_offer.png",
                    width: 75,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    "Special Offers",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                    ),
                  ),
                  subtitle: Text(
                    "We make sure you get the\noffer you need at best prices",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 172,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 172,
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 16, right: 16, top: 13),
                      ),
                    ),
                    Positioned(
                      top: 21,
                      left: 16,
                      bottom: 8,
                      child: SizedBox(
                        height: 172,
                        child: Image.asset(
                          "assets/images/star_effect.png",
                          width: 77,
                          height: 155,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24,
                      top: 21,
                      right: 24,
                      bottom: 8,
                      child: Container(
                        height: 155,
                        color: Color(0xFFE7E7EB).withValues(alpha: 0.3),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/heels.png",
                                width: 144,
                                height: 108,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Flat and Heels",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF232327),
                                    ),
                                  ),
                                  Text(
                                    "Stand a chance to get rewarded",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF232327),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  HomeScreenButton(
                                    text: "Visit now",
                                    width: 92,
                                    height: 24,
                                    backgroundColor: Color(0xFFF83758),
                                    borderColor: Colors.transparent,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 13,
                      child: SizedBox(
                        height: 171,
                        width: 11,
                        child: Image.asset("assets/images/gradient.png"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18, right: 18, top: 28),
                padding: EdgeInsets.only(left: 8, right: 12),
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFFD6E87),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                  minVerticalPadding: 0,
                  dense: true,
                  title: Text(
                    "Trending Products",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Image.asset(
                        "assets/images/calendar_icon.png",
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "2Last Date 29/02/22",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  trailing: HomeScreenButton(
                    text: "View all",
                    width: 89,
                    height: 28,
                    backgroundColor: Color(0xFFFD6E87),
                    borderColor: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 17, right: 15, top: 26),
                height: 300,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/summer_sale.png",
                      width: MediaQuery.of(context).size.width,
                      height: 204,
                      fit: BoxFit.fill,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(
                        top: 8,
                        left: 8,
                        right: 12,
                      ),
                      visualDensity: VisualDensity.compact,
                      minVerticalPadding: 0,
                      dense: true,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New Arrivals",
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              height: 0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Summer’ 25 Collections",
                            style: GoogleFonts.montserrat(
                              height: 0,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: HomeScreenButton(
                          text: "View all",
                          width: 89,
                          height: 28,
                          backgroundColor: Color(0xFFF83758),
                          borderColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
