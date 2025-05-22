import 'package:deshi_mart/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeMartScreen extends StatelessWidget {
  final List<WelcomeRow> welcome = [
    WelcomeRow(
      title: "Organic Groceries",
      icon: ImageIcon(
        AssetImage("assets/images/organic_groceries.png"),
        color: Color(0xFF00CA44),
      ),
    ),
    WelcomeRow(
      title: "Whole foods and vegitable",
      icon: ImageIcon(
        AssetImage("assets/images/foods_vegetable.png"),
        color: Color(0xFFF6921E),
      ),
    ),
    WelcomeRow(
      title: "Fast Delivery",
      icon: ImageIcon(
        AssetImage("assets/images/fast_delivery.png"),
        color: Color(0xFF2301F4),
      ),
    ),
    WelcomeRow(
      title: "East Refund and return",
      icon: ImageIcon(
        AssetImage("assets/images/money_bag.png"),
        color: Color(0xFF00CA44),
      ),
    ),
    WelcomeRow(
      title: "Secure and safe",
      icon: ImageIcon(
        AssetImage("assets/images/security.png"),
        color: Color(0xFFFC0000),
      ),
    ),
  ];

  final double dotWidth = 2;
  final double spacing = 2;
  WelcomeMartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35, top: 128, bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/mart_logo.png",
                  width: 65,
                  height: 70,
                ),
                SizedBox(height: 10),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF00CA44),
                        ),
                        text: "DESHI ",
                      ),
                      TextSpan(
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFF6921E),
                        ),
                        text: "MART",
                      ),
                    ],
                  ),
                ),
                Text(
                  "Desh ka market",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF868686),
                    letterSpacing: 0,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: welcome.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 35, right: 52, top: 10),
                child: Column(
                  children: [
                    ListTile(
                      minLeadingWidth: 0,
                      minTileHeight: 0,
                      minVerticalPadding: 0,
                      horizontalTitleGap: 30,
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      leading: welcome[index].icon,
                      title: Text(
                        welcome[index].title,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF868686),
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final count =
                            (constraints.maxWidth / (dotWidth + spacing))
                                .floor();
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(count, (index) {
                            return Container(
                              width: dotWidth,
                              height: 1,
                              margin: EdgeInsets.only(right: spacing),
                              color: Color(0xFF8E8E8E),
                            );
                          }),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 57),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFF00CA44),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 26,
                  left: 39,
                  right: 39,
                  bottom: 20,
                ),
                child: Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      softWrap: true,
                      "Welcome to our Store",
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                        letterSpacing: 0,
                      ),
                    ),
                    Text(
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                      ),
                      textAlign: TextAlign.center,
                      "Get your grocery in as fast as one hours",
                    ),
                    Spacer(),
                    SizedBox(
                      height: 52,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          elevation: 0,
                          backgroundColor: Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(23),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SigninScreen(),
                            ),
                          );
                        },
                        child: Center(child: Text("")),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeRow {
  final String title;
  final ImageIcon icon;

  WelcomeRow({required this.title, required this.icon});
}
