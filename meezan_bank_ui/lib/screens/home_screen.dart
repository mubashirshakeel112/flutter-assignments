import 'package:flutter/material.dart';
import 'package:meezan_bank_ui/components/account_detail_btn.dart';
import 'package:meezan_bank_ui/components/send_bill_btn.dart';
import 'package:meezan_bank_ui/screens/select_bank_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int navbarIndex = 0;
  final List<CardBox> items = [
    CardBox(image: "assets/images/debit_card.png", text: "Debit Card"),
    CardBox(image: "assets/images/raast_payment.png", text: "Raast Payments"),
    CardBox(image: "assets/images/settings.png", text: "Settings"),
    CardBox(image: "assets/images/products.png", text: "Products"),
    CardBox(image: "assets/images/zakat_sadqat.png", text: "Zakat & Sadqat"),
    CardBox(image: "assets/images/faq.png", text: "FAQ"),
    CardBox(image: "assets/images/whatsapp.png", text: "Contact"),
    CardBox(image: "assets/images/feedback.png", text: "Feedback"),
  ];

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> key = GlobalKey();
    return Scaffold(
      backgroundColor: Colors.white,
      drawerEnableOpenDragGesture: false,
      key: key,
      drawer: Drawer(
        backgroundColor: Color(0xFFFFFFFF),
        shape: RoundedRectangleBorder(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 210,
              width: MediaQuery.of(context).size.width,
              child: DrawerHeader(
                padding: EdgeInsets.only(left: 16, top: 10, bottom: 10),
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Color(0xFF5F2585)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        "assets/images/person_avatar.jpg",
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Muhammad Yasir",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Text(
                      "Balance: PKR 0.00",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Home",
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: Color(0xFF737373)),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Beneficiary",
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: Color(0xFF737373)),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Faq",
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: Color(0xFF737373)),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Feedback",
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: Color(0xFF737373)),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Contact us",
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: Color(0xFF737373)),
                  ),
                ],
              ),
            ),
            Spacer(),
            ListTile(
              tileColor: Color(0xFF5F2585),
              title: Text(
                "Logout",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Color(0xFFFFFFFF)),
              ),
              trailing: Icon(Icons.logout_outlined, color: Color(0xFFFFFFFF)),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 56,
        flexibleSpace: ListTile(
          dense: true,
          contentPadding: EdgeInsets.only(
            top: 40,
            bottom: 16,
            left: 16,
            right: 16,
          ),
          minTileHeight: 0,
          minLeadingWidth: 0,
          minVerticalPadding: 0,
          horizontalTitleGap: 24,
          leading: Builder(
            builder: (context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Icon(Icons.menu, color: Color(0xFFFFFFFF), size: 24),
              );
            },
          ),
          title: Text(""),
          trailing: ImageIcon(
            AssetImage("assets/images/notifications.png"),
            color: Color(0xFFFFFFFF),
          ),
        ),
        backgroundColor: Color(0xFF5F2585),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFDFD3E7),
                borderRadius: BorderRadius.circular(4),
              ),
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 18,
                bottom: 18,
              ),
              margin: EdgeInsets.only(top: 24),
              child: ExpansionTile(
                dense: true,
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                tilePadding: EdgeInsets.zero,
                childrenPadding: EdgeInsets.zero,
                showTrailingIcon: false,
                shape: RoundedRectangleBorder(side: BorderSide.none),
                title: Column(
                  children: [
                    ListTile(
                      minLeadingWidth: 0,
                      minTileHeight: 0,
                      minVerticalPadding: 0,
                      horizontalTitleGap: 0,
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        "Welcome!",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000),
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFF1C1B1F),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 6),
                            Text(
                              "Muhammad Yasir",
                              style: Theme.of(
                                context,
                              ).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Text(
                              "102891101281",
                              style: Theme.of(
                                context,
                              ).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Balance",
                              style: Theme.of(
                                context,
                              ).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF737373),
                              ),
                            ),
                            Text(
                              "PKR 0.00",
                              style: Theme.of(
                                context,
                              ).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF5F2585),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                children: <Widget>[
                  Text(
                    "Ghazi branch",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF737373),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 36,
                      right: 36,
                      top: 24,
                    ),
                    child: Row(
                      spacing: 24,
                      children: [
                        AccountDetailBtn(
                          btnText: "Share account",
                          bgColor: Color(0xFFDFD3E7),
                          textColor: Color(0xFF5F2585),
                          borderColor: Color(0xFF5F2585),
                        ),
                        AccountDetailBtn(
                          btnText: "View statement",
                          bgColor: Color(0xFF5F2585),
                          textColor: Color(0xFFFFFFFF),
                          borderColor: Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
              child: Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SendBillBtn(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectBankScreen(),
                        ),
                      );
                    },
                    text: "Send money",
                    image: "assets/images/send_money.png",
                  ),
                  SendBillBtn(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectBankScreen(),
                        ),
                      );
                    },
                    text: "Bills & Top up",
                    image: "assets/images/bills_topup.png",
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 20,
                bottom: 25,
              ),
              margin: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                border: Border.all(width: 1, color: Color(0xFFDFD3E7)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: Color(0xFF000000).withAlpha(12),
                    offset: Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(14),
              ),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 52,
                        height: 52,
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Color(0xFFDFD3E7).withAlpha(50),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(items[index].image),
                      ),
                      SizedBox(height: 12),
                      Text(
                        items[index].text,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(color: Color(0xFF262626)),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF5F2585),
        shape: CircleBorder(),
        elevation: 0,
        onPressed: () {},
        child: ImageIcon(
          AssetImage("assets/images/qr_code.png"),
          color: Color(0xFFFFFFFF),
          size: 32,
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              spreadRadius: 0,
              color: Color(0xFF000000).withAlpha(7),
              offset: Offset(0, -7),
            ),
          ],
        ),
        child: BottomAppBar(
          padding: EdgeInsets.only(left: 16, right: 16, top: 8),
          color: Color(0xFFFFFFFF),
          height: 68,
          // notchMargin: 0,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 62,
                height: 52,
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    ImageIcon(
                      AssetImage("assets/images/location_on.png"),
                      color: Color(0xFF5F2585),
                    ),
                    Text(
                      "Location",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFF5F2585),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 62,
                height: 52,
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    ImageIcon(
                      AssetImage("assets/images/discount.png"),
                      color: Color(0xFF5F2585),
                    ),
                    Text(
                      "Discount",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFF5F2585),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 62,
                height: 52,
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    ImageIcon(
                      AssetImage("assets/images/qibla.png"),
                      color: Color(0xFF5F2585),
                    ),
                    Text(
                      "Qibla",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFF5F2585),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 62,
                height: 52,
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    ImageIcon(
                      AssetImage("assets/images/logout.png"),
                      color: Color(0xFF5F2585),
                    ),
                    Text(
                      "Logout",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFF5F2585),
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

class CardBox {
  String image;
  String text;

  CardBox({required this.image, required this.text});
}
