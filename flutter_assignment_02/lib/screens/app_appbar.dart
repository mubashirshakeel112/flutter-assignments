import 'package:flutter/material.dart';

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final GestureTapCallback? onTapArrowBack;
  final GestureTapCallback? onTapHome;
  const AppAppbar({
    super.key,
    required this.title,
    required this.subtitle,
    this.onTapArrowBack,
    this.onTapHome,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 205,
      backgroundColor: Color(0xFFFD6E86),
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(left: 20, right: 27, top: 61),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: onTapArrowBack,
                  child: Icon(
                    Icons.arrow_back,
                    size: 35,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                GestureDetector(
                  onTap: onTapHome,
                  child: Icon(Icons.home, size: 35, color: Color(0xFFFFFFFF)),
                ),
              ],
            ),
            SizedBox(height: 29),
            Text(
              title,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFFFFFF),
              ),
            ),
            SizedBox(height: 4),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(205);
}
