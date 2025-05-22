import 'package:deshi_mart/components/bottom_nav_bar.dart';
import 'package:deshi_mart/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  final List<AccountDetail> accountDetail = [
    AccountDetail(
      leading: Icons.calendar_today,
      title: "Orders",
      trailing: Icons.arrow_forward_ios_rounded,
    ),
    AccountDetail(
      leading: Icons.contact_mail_sharp,
      title: "My Details",
      trailing: Icons.arrow_forward_ios_rounded,
    ),
    AccountDetail(
      leading: Icons.location_on_rounded,
      title: "Delivery Address",
      trailing: Icons.arrow_forward_ios_rounded,
    ),
    AccountDetail(
      leading: Icons.price_change_outlined,
      title: "Payment Methods",
      trailing: Icons.arrow_forward_ios_rounded,
    ),
    AccountDetail(
      leading: Icons.sell_outlined,
      title: "Promo Cord",
      trailing: Icons.arrow_forward_ios_rounded,
    ),
    AccountDetail(
      leading: Icons.notifications_none,
      title: "Notifecations",
      trailing: Icons.arrow_forward_ios_rounded,
    ),
    AccountDetail(
      leading: Icons.help_outline,
      title: "Help",
      trailing: Icons.arrow_forward_ios_rounded,
    ),
    AccountDetail(
      leading: Icons.info_outlined,
      title: "About ",
      trailing: Icons.arrow_forward_ios_rounded,
    ),
  ];
  AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: ListView(
        padding: EdgeInsets.only(top: 70),
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1, color: Color(0xFFE2E2E2)),
              ),
            ),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              minLeadingWidth: 0,
              minTileHeight: 0,
              minVerticalPadding: 0,
              horizontalTitleGap: 20,
              titleAlignment: ListTileTitleAlignment.top,
              contentPadding: EdgeInsets.only(left: 25, top: 0),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(27),
                child: Image.network(
                  width: 64,
                  height: 64,
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoHAKWHhA6UuX-UPdizhi5K4IsByBpEJMX8Q&s",
                ),
              ),
              title: Row(
                spacing: 10,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Jack"),
                  Icon(Icons.edit_outlined, color: Color(0xFF53B175), size: 15),
                ],
              ),
              subtitle: Text("jack123@gmail.com"),
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: accountDetail.length,
            itemBuilder: (context, index) {
              return Container(
                // padding: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xFFE2E2E2)),
                  ),
                ),
                child: ListTile(
                  minLeadingWidth: 0,
                  minTileHeight: 0,
                  minVerticalPadding: 0,
                  horizontalTitleGap: 20,
                  contentPadding: EdgeInsets.only(
                    left: 25,
                    right: 25,
                    top: 20,
                    bottom: 20,
                  ),
                  leading: Icon(accountDetail[index].leading, size: 20),
                  title: Text(
                    accountDetail[index].title,
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(color: Color(0xFF181725)),
                  ),
                  trailing: Icon(
                    accountDetail[index].trailing,
                    size: 18,
                    color: Color(0xFF181725),
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 52,
              bottom: 24,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                visualDensity: VisualDensity.compact,
                fixedSize: Size(double.infinity, 67),
                elevation: 0,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                backgroundColor: Color(0xFFF2F3F2),
              ),
              onPressed: () {},
              child: ListTile(
                minLeadingWidth: 0,
                minTileHeight: 0,
                minVerticalPadding: 0,
                horizontalTitleGap: 0,
                dense: true,
                leading: Icon(
                  Icons.logout_outlined,
                  color: Color(0xFF53B175),
                  size: 25,
                ),
                title: Center(
                  child: Text(
                    "Log Out",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(color: Color(0xFF53B175)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavBar(navbarIndex: 4),
    );
  }
}

class AccountDetail {
  IconData leading;
  String title;
  IconData trailing;

  AccountDetail({
    required this.leading,
    required this.title,
    required this.trailing,
  });
}
