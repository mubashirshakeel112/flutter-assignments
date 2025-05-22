import 'package:deshi_mart/screens/order_history_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderStatusScreen extends StatelessWidget {
  const OrderStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //     SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    //   SystemUiOverlay.bottom
    // ]);
    return Scaffold(
      backgroundColor: Color(0xFFF2F3F2),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF019934),
        title: Text(
          "Order Details",
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
        child: Column(
          children: [
            Text(
              "Please check your order status to get the item delivered to your home",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF333333),
                letterSpacing: 0,
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => OrderHistoryScreen()),
                    );
                  },
                  minLeadingWidth: 0,
                  minTileHeight: 0,
                  minVerticalPadding: 0,
                  horizontalTitleGap: 26,
                  contentPadding: EdgeInsets.only(top: 35),
                  dense: true,
                  titleAlignment: ListTileTitleAlignment.top,
                  leading: Container(
                    width: 27,
                    height: 27,
                    decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: BoxShape.circle,
                    ),
                  ),
                  title: Text(
                    "Order Confirmed",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF333333),
                      letterSpacing: 0,
                    ),
                  ),
                  subtitle: Text(
                    "Feb 22 2024",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF8E8E8E),
                      letterSpacing: 0,
                    ),
                  ),
                  trailing: Text(
                    "Feb 22 2024",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF8E8E8E),
                      letterSpacing: 0,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
