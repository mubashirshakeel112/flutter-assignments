import 'package:flutter/material.dart';
import 'package:meezan_bank_ui/screens/home_screen.dart';

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  final IconData leadingIcon;
  final Text? text;
  final IconData trailingIcon;
  const AppAppbar({
    super.key,
    required this.leadingIcon,
    this.text,
    required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 56,
      flexibleSpace: ListTile(
        dense: true,
        contentPadding: EdgeInsets.only(
          top: 50,
          bottom: 16,
          left: 16,
          right: 16,
        ),
        minTileHeight: 0,
        minLeadingWidth: 0,
        minVerticalPadding: 0,
        horizontalTitleGap: 24,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(leadingIcon, size: 24, color: Color(0xFFFFFFFF)),
        ),
        title: text,
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Icon(trailingIcon, size: 24, color: Color(0xFFFFFFFF)),
        ),
      ),
      backgroundColor: Color(0xFF5F2585),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
