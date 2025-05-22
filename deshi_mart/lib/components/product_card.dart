import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final double price;
  final Function()? function;
  final Icon? icon;
  final GestureTapCallback? onPressed;
  const ProductCard({
    super.key,
    this.onPressed,
    this.icon,
    this.function,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173,
      height: 248,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Color(0xFFE2E2E2)),
        borderRadius: BorderRadius.circular(18),
      ),
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: GestureDetector(
                onTap: onPressed,
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                  width: 102,
                  height: 62,
                ),
              ),
            ),
            SizedBox(height: 22),
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelLarge?.copyWith(color: Color(0xFF181725)),
            ),
            // SizedBox(height: 5),
            Text(subTitle, style: Theme.of(context).textTheme.bodySmall),
            SizedBox(height: 20),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageIcon(
                  AssetImage("assets/images/dollar.png"),
                  size: 15,
                  color: Color(0xFF000000),
                ),
                Text(
                  price.toString(),
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(color: Color(0xFF181725)),
                ),
                Spacer(),
                SizedBox(
                  width: 45,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      backgroundColor: Color(0xFF53B175),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    onPressed: function,
                    child: icon,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
