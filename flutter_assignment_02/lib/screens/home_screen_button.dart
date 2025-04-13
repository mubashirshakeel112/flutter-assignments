import 'package:flutter/material.dart';
import 'package:flutter_assignment_02/screens/sign_up_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenButton extends StatelessWidget {
  final String text;
  // final IconData icon;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color borderColor;
  const HomeScreenButton({
    super.key,
    required this.text,
    // required this.icon,
    required this.width,
    required this.height,
    required this.backgroundColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        fixedSize: Size(width, height),
        shadowColor: Colors.transparent,
        backgroundColor: backgroundColor,
        side: BorderSide(width: 1, color: borderColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignUpScreen()),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: GoogleFonts.montserrat(
              height: 1.2,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFFFFFF),
            ),
          ),
          SizedBox(width: 4),
          // Icon(Icons.arrow_forward, size: 16, color: Color(0xFFFFFFFF)),
          Image.asset(
            "assets/images/arrow_forward_icon.png",
            width: 16,
            height: 16,
          ),
        ],
      ),
    );
  }
}
