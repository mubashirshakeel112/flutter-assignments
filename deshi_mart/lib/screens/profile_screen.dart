import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  final List<ProfileRow> profileRow = [
    ProfileRow(
      title: "User Details",
      icon: ImageIcon(AssetImage("assets/images/user_filled.png")),
    ),
    ProfileRow(
      title: "Settings",
      icon: ImageIcon(AssetImage("assets/images/setting.png")),
    ),
    ProfileRow(
      title: "Help & Supports",
      icon: ImageIcon(AssetImage("assets/images/help_support.png")),
    ),
    ProfileRow(
      title: "Change Language",
      icon: ImageIcon(AssetImage("assets/images/language.png")),
    ),
    ProfileRow(
      title: "Logout",
      icon: ImageIcon(AssetImage("assets/images/logout_forward.png")),
    ),
  ];
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F3F2),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF019934),
        title: Center(
          child: Text(
            "Profile",
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 89),
          child: Column(
            children: [
              Container(
                width: 128,
                height: 128,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF019934).withAlpha(50),
                ),
              ),
              SizedBox(height: 22),
              Text(
                "Mr . Nitish Kumar",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  letterSpacing: 0,
                ),
              ),
              Text(
                "Nitishr833@gmail.com",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF8E8E8E),
                  letterSpacing: 0,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32),
                decoration: BoxDecoration(
                  color: Color(0xFF019934).withAlpha(50),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 27, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      details("assets/images/order.png", "Order"),
                      // Column(
                      //   children: [
                      //     ImageIcon(AssetImage("assets/images/order.png")),
                      //     Text("Order"),
                      //   ],
                      // ),
                      details("assets/images/payment.png", "Payments"),
                      details("assets/images/location.png", "Address"),
                      // Column(
                      //   children: [
                      //     ImageIcon(AssetImage("assets/images/payment.png")),
                      //     Text("Payments"),
                      //   ],
                      // ),
                      // Column(
                      //   children: [
                      //     ImageIcon(AssetImage("assets/images/location.png")),
                      //     Text("Address"),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.only(top: 16, bottom: 68),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: profileRow.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: Row(
                      spacing: 15,
                      children: [
                        Container(
                          width: 46,
                          height: 46,
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Color(0xFF019934).withAlpha(50),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: profileRow[index].icon,
                        ),
                        Text(
                          profileRow[index].title,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000),
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget details(String img, String text) {
    return Column(
      spacing: 10,
      children: [
        ImageIcon(AssetImage(img)),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Color(0xFF333333),
            letterSpacing: 0,
          ),
        ),
      ],
    );
  }
}

class ProfileRow {
  final String title;
  final ImageIcon icon;

  ProfileRow({required this.title, required this.icon});
}
