import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 82, 82, 82),
      appBar: AppBar(
        title: Text(
          "Chess",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 73, 73, 73),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                chessBoxes(color: Colors.black),
                chessBoxes(color: Colors.white),
                chessBoxes(color: Colors.black),
                chessBoxes(color: Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                chessBoxes(color: Colors.white),
                chessBoxes(color: Colors.black),
                chessBoxes(color: Colors.white),
                chessBoxes(color: Colors.black),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                chessBoxes(color: Colors.black),
                chessBoxes(color: Colors.white),
                chessBoxes(color: Colors.black),
                chessBoxes(color: Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                chessBoxes(color: Colors.white),
                chessBoxes(color: Colors.black),
                chessBoxes(color: Colors.white),
                chessBoxes(color: Colors.black),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget chessBoxes({required Color color}) {
    return Container(width: 70, height: 70, color: color);
  }
}
