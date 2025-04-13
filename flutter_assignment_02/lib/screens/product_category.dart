import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCategory extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  final String text;
  const ProductCategory({
    super.key,
    required this.image,
    required this.width,
    required this.height,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              image,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 4,),
          Text(
            text,
            style: GoogleFonts.montserrat(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(0xFF21003D),
            ),
          )
        ],
      ),
    );
  }
}
