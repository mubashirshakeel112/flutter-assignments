import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  Alignment alignment = Alignment.center;
  final Color bgColor;
  final String title;
  final Image? icon;
  final Function onTap;
  final Icon? icons;
  Color? btnTextColor = Color(0xFFFFFFFF);
  EdgeInsetsGeometry? padding;
  AppButton({
    super.key,
    this.icons,
    this.padding,
    this.btnTextColor,
    this.alignment = Alignment.center,
    required this.bgColor,
    required this.title,
    this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        visualDensity: VisualDensity.compact,
        fixedSize: Size(double.infinity, 67),
        elevation: 0,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
        backgroundColor: bgColor,
      ),
      onPressed: () {
        onTap();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null && padding != null)
            Padding(padding: padding!, child: icon!),
          if (icons != null && padding != null)
            Padding(padding: padding!, child: icons!),
          Expanded(
            child: Align(
              alignment: alignment,
              child: Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: btnTextColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
