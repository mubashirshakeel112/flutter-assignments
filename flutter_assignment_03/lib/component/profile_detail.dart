import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  final String leadingImg;
  final String title;
  const ProfileDetail({
    super.key,
    required this.leadingImg,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          dense: true,
          horizontalTitleGap: 16,
          minVerticalPadding: 0,
          minTileHeight: 0,
          leading: Image.asset(leadingImg, width: 24, height: 24),
          title: Text(title, style: Theme.of(context).textTheme.titleLarge),
          trailing: Image.asset("assets/images/greater_then_sign.png", width: 16, height: 16),
        ),
        Container(
          margin: EdgeInsets.only(top: 16, bottom: 16, left: 37),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Color(0xFF000000).withAlpha(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
