import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderHistoryScreen extends StatelessWidget {
  final List<OldHistory> oldhistory = [
    OldHistory(
      title: "Confirmed ",
      subtitle: "Order id : 235454645",
      desc: "Items ( 7 )",
      icon: ImageIcon(
        AssetImage("assets/images/check_circle.png"),
        color: Color(0xFF019934),
      ),
    ),
    OldHistory(
      title: "Delivered",
      subtitle: "Order id : 235454645",
      desc: "Items ( 7 )",
      icon: ImageIcon(
        AssetImage("assets/images/delivery_truck.png"),
        color: Color(0xFF019934),
      ),
    ),
    OldHistory(
      title: "Canceled  ",
      subtitle: "Order id : 235454645",
      desc: "Items ( 7 )",
      icon: ImageIcon(
        AssetImage("assets/images/cancel_rectangle.png"),
        color: Color(0xFFFF0000),
      ),
    ),
    OldHistory(
      title: "Confirmed  ",
      subtitle: "Order id : 235454645",
      desc: "Items ( 7 )",
      icon: ImageIcon(
        AssetImage("assets/images/check_circle.png"),
        color: Color(0xFF019934),
      ),
    ),
    OldHistory(
      title: "Delivered  ",
      subtitle: "Order id : 235454645",
      desc: "Items ( 7 )",
      icon: ImageIcon(
        AssetImage("assets/images/delivery_truck.png"),
        color: Color(0xFF019934),
      ),
    ),
    OldHistory(
      title: "Canceled  ",
      subtitle: "Order id : 235454645",
      desc: "Items ( 7 )",
      icon: ImageIcon(
        AssetImage("assets/images/cancel_rectangle.png"),
        color: Color(0xFFFF0000),
      ),
    ),
  ];
  OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F3F2),
      appBar: AppBar(
        backgroundColor: Color(0xFF019934),
        title: Text(
          "Order History",
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Order History",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xFF333333),
                letterSpacing: 0,
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 2),
                itemCount: oldhistory.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 21),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      spacing: 13,
                      children: [
                        Container(
                          width: 76,
                          height: 76,
                          margin: EdgeInsets.only(top: 4, bottom: 4, left: 5),
                          // padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            color: Color(0xFF019934).withAlpha(50),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [oldhistory[index].icon],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              oldhistory[index].title,
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF333333),
                                letterSpacing: 0,
                              ),
                            ),
                            Text(
                              oldhistory[index].subtitle,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF8E8E8E),
                                letterSpacing: 0,
                              ),
                            ),
                            Text(
                              oldhistory[index].desc,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF8E8E8E),
                                letterSpacing: 0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OldHistory {
  String title;
  String subtitle;
  String desc;
  ImageIcon icon;

  OldHistory({
    required this.title,
    required this.subtitle,
    required this.desc,
    required this.icon,
  });
}
