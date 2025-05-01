import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  final Text? title;
  final Text? subTitle;
  final Text? description;
  final IconData? icon;
  final Image image;
  final String? iconImg;

  const BankCard({
    super.key,
    required this.image,
    this.title,
    this.subTitle,
    this.description,
    this.icon,
    this.iconImg,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            border: Border.all(width: 1, color: Color(0xFFDFD3E7)),
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(50),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: image,
          ),
        ),
        SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null && title!.toString().isNotEmpty) title!,
              SizedBox(height: 2),
              if (subTitle != null && subTitle!.toString().isNotEmpty)
                subTitle!,
              SizedBox(height: 6),
              if (description != null && description!.toString().isNotEmpty)
                description!,
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) Icon(icon, size: 15, color: Color(0xFF737373)),
            if (iconImg != null && iconImg!.isNotEmpty)
              ImageIcon(
                AssetImage(iconImg!),
                size: 12,
                color: Color(0xFF737373),
              ),
          ],
        ),
      ],
    );
  }
}
