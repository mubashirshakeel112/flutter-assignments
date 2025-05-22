import 'package:deshi_mart/components/app_button.dart';
import 'package:deshi_mart/components/filter_Items.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(top: 55, left: 20),
            minTileHeight: 0,
            horizontalTitleGap: 0,
            minLeadingWidth: 0,
            minVerticalPadding: 0,
            dense: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.close, color: Color(0xFF181725)),
            ),
            title: Center(
              child: Text(
                "Filter",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            trailing: Text(""),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 32),
              padding: EdgeInsets.only(
                left: 25,
                top: 30,
                right: 25,
                bottom: 22,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFF2F3F2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Categories",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: 5),
                  FilterItems(text: "Egg"),
                  FilterItems(text: "Noodles & Pasta"),
                  FilterItems(text: "Chips & Crisps"),
                  FilterItems(text: "Fast Food"),
                  SizedBox(height: 40),
                  Text(
                    "Brand",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: 5),
                  FilterItems(text: "Individual Callection"),
                  FilterItems(text: "Cocola"),
                  FilterItems(text: "Ifad"),
                  FilterItems(text: "Kazi Farmas"),
                  Spacer(),
                  AppButton(
                    bgColor: Color(0xFF53B175),
                    title: "Apply Filter",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
