import 'package:flutter/material.dart';
import 'package:flutter_assignment_02/screens/home_screen.dart';

class AppButton extends StatelessWidget {
  final String text;
  const AppButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, 60),
        shape: RoundedRectangleBorder(),
        backgroundColor: Color(0xFFF83758),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
