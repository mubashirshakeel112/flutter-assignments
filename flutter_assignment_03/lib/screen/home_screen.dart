import 'package:flutter/material.dart';
import 'package:flutter_assignment_03/component/field_category.dart';
import 'package:flutter_assignment_03/screen/product_detail.dart';
import 'package:flutter_assignment_03/screen/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 213,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFF4157FF), Color(0xFF3D50E7)],
                ),
                // color: Color(0xFF4157FF),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 26,
                  right: 25,
                  top: 32,
                  // bottom: 63,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Profile()),
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/profile.png",
                          ),
                        ),
                      ),
                      trailing: Wrap(
                        spacing: 21,
                        children: [
                          Image.asset(
                            "assets/images/home_screen_notification_icon.png",
                            width: 20,
                            height: 20,
                            // color: Color(0xFFFFFFFF),
                          ),
                          Image.asset(
                            "assets/images/home_screen_shopping_bag.png",
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 23),
                    Text(
                      "Hi, Shahzeb",
                      style: TextStyle(
                        fontFamily: "Overpass",
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Text(
                      "Welcome to Quick Medical Store",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 189,
            left: 24,
            right: 24,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF000000).withAlpha(7),
                    blurRadius: 14,
                    spreadRadius: 0,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: TextField(
                cursorColor: Color(0xFF090F47),
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Color(0xFF090F47)),
                decoration: InputDecoration(
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 23,
                    maxHeight: 20,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Icon(
                      Icons.search,
                      size: 24,
                      color: Color(0xFF090F47).withAlpha(75),
                    ),
                  ),
                  hintText: "Search Medicine & Healthcare products",
                  hintStyle: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(fontSize: 13),
                  isDense: true,
                  contentPadding: EdgeInsets.only(
                    left: 0,
                    top: 18,
                    bottom: 18,
                    right: 20,
                  ),
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(56),
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 263,
            left: 24,
            right: 24,
            // bottom: 20,
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(bottom: 10),
              children: [
                Text(
                  "Top Categories",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 11,
                    children: [
                      FieldCategory(
                        topColor: Color(0xFFFF9598),
                        bottomColor: Color(0xFFFF70A7),
                        text: "Dental",
                      ),
                      FieldCategory(
                        topColor: Color(0xFF19E5A5),
                        bottomColor: Color(0xFF15BD92),
                        text: "Wellness",
                      ),
                      FieldCategory(
                        topColor: Color(0xFFFFC06F),
                        bottomColor: Color(0xFFFF793A),
                        text: "Homeo",
                      ),
                      FieldCategory(
                        topColor: Color(0xFF4DB7FF),
                        bottomColor: Color(0xFF3E7DFF),
                        text: "Eye care",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 26),
                Image.asset(
                  "assets/images/medicine_tools.png",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 27, left: 2, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Deals of the Day",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        "More",
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(color: Color(0xFF006AFF)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13),
                GridView.builder(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 13,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetail(),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(),
                        color: Color(0xFFFFFFFF),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 147.2239990234375,
                              // height: 239,
                              color: Color(0xFFEEEEF0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/pills_bottle.png",
                                    width: 96.84724426269531,
                                    height: 128.10400390625,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 7, top: 7),
                              child: Text(
                                "Accu-check Active\nTest Strip",
                                style: Theme.of(
                                  context,
                                ).textTheme.titleMedium?.copyWith(
                                  color: Color(0xFF090F47),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    top: 4,
                                  ),
                                  child: Text(
                                    "Rs.112",
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                ),
                                Container(
                                  width: 42,
                                  height: 22,
                                  padding: EdgeInsets.only(left: 6, bottom: 2),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFC000),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      Text(
                                        "2",
                                        style: Theme.of(
                                          context,
                                        ).textTheme.titleLarge?.copyWith(
                                          fontSize: 13,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
