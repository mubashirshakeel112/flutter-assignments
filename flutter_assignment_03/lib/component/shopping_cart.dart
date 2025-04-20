import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String price;
  const ShoppingCart({super.key, required this.image, required this.title, required this.subTitle, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                image,
                width: 70,
                height: 81,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    subTitle,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 17),
                  Text(price, style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 28,
              children: [
                Image.asset(
                  "assets/images/cross_icon.png",
                  width: 20,
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F4FF),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Color(0xFFDFE3FF),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.remove,
                          size: 24,
                          color: Color(0xFF4157FF),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: Text(
                          "1",
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(color: Color(0xFF000000)),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Color(0xFFA0ABFF),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          size: 24,
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
        Container(
          margin: EdgeInsets.only(top: 16, bottom: 16),
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
