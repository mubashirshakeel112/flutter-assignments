import 'dart:async';

import 'package:deshi_mart/screens/account_screen.dart';
import 'package:deshi_mart/screens/favourite_screen.dart';
import 'package:deshi_mart/screens/find_products_screen.dart';
import 'package:deshi_mart/screens/home_screen.dart';
import 'package:deshi_mart/screens/my_cart_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  int navbarIndex = 0;
  BottomNavBar({super.key, required this.navbarIndex});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 37,
            spreadRadius: 0,
            color: Color(0xFFE6EBF3).withAlpha(50),
            offset: Offset(0, -12),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          selectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),

          selectedItemColor: Color(0xFF53B175),
          // fixedColor: Color(0xFF53B175),
          unselectedItemColor: Color(0xFF181725),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFFFFFFFF),
          onTap: (value) {
            setState(() {
              widget.navbarIndex = value;
            });
            // Future.delayed(Duration(milliseconds: 200), () {
            //   if (value == 0) {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => HomeScreen()),
            //     );
            //   } else if (value == 1) {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => FindProductsScreen()),
            //     );
            //   } else if (value == 2) {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => MyCartScreen()),
            //     );
            //   } else if (value == 4) {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => AccountScreen()),
            //     );
            //   }
            // });
            print(value);
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (value == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              } else if (value == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FindProductsScreen()),
                );
              } else if (value == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCartScreen()),
                );
              } else if (value == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavouriteScreen()),
                );
              } else if (value == 4) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountScreen()),
                );
              }
            });
          },
          currentIndex: widget.navbarIndex,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/store.png")),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/explore.png")),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/cart.png")),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/favourite.png")),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/person.png")),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
