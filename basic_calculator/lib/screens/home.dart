import 'package:basic_calculator/screens/operator_button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController firstFieldController = TextEditingController();
  final TextEditingController secondFieldController = TextEditingController();

  String finalResult = "";

  void add() {
    double num1 = double.tryParse(firstFieldController.text) ?? 0;
    double num2 = double.tryParse(secondFieldController.text) ?? 0;

    var result = (num1 + num2).toString();
    setState(() {
      finalResult = result;
    });
    firstFieldController.clear();
    secondFieldController.clear();
  }

  void subtract() {
    double num1 = double.tryParse(firstFieldController.text) ?? 0;
    double num2 = double.tryParse(secondFieldController.text) ?? 0;

    var result = (num1 - num2).toString();
    setState(() {
      finalResult = result;
    });
    firstFieldController.clear();
    secondFieldController.clear();
  }

  void multiply() {
    double num1 = double.tryParse(firstFieldController.text) ?? 0;
    double num2 = double.tryParse(secondFieldController.text) ?? 0;

    var result = (num1 * num2).toString();
    setState(() {
      finalResult = result;
    });
    firstFieldController.clear();
    secondFieldController.clear();
  }

  void divide() {
    double num1 = double.tryParse(firstFieldController.text) ?? 0;
    double num2 = double.tryParse(secondFieldController.text) ?? 0;

    var result = (num1 / num2).toString();
    setState(() {
      finalResult = result;
    });
    firstFieldController.clear();
    secondFieldController.clear();
  }

  void clearScreen() {
    setState(() {
      finalResult = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 27, 27, 27),
      body: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 20),
              height: 200,
              width: width,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 39, 39, 39),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerRight,
                child: Text(
                  finalResult,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: TextField(
                cursorColor: const Color.fromARGB(255, 4, 96, 171),
                controller: firstFieldController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Enter first number",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 90, 90, 90),
                    fontWeight: FontWeight.w700,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: const Color.fromARGB(255, 90, 90, 90),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: const Color.fromARGB(255, 90, 90, 90),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextField(
                cursorColor: const Color.fromARGB(255, 4, 96, 171),
                controller: secondFieldController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Enter second number",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 90, 90, 90),
                    fontWeight: FontWeight.w700,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: const Color.fromARGB(255, 90, 90, 90),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: const Color.fromARGB(255, 90, 90, 90),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OperatorButton(
                    text: "+",
                    color: const Color.fromARGB(255, 53, 53, 53),
                    onPressed: add,
                  ),
                  OperatorButton(
                    text: "-",
                    color: const Color.fromARGB(255, 53, 53, 53),
                    onPressed: subtract,
                  ),
                  OperatorButton(
                    text: "X",
                    color: const Color.fromARGB(255, 53, 53, 53),
                    onPressed: multiply,
                  ),
                  OperatorButton(
                    text: "/",
                    color: const Color.fromARGB(255, 53, 53, 53),
                    onPressed: divide,
                  ),
                  OperatorButton(
                    text: "AC",
                    color: const Color.fromARGB(255, 2, 96, 5),
                    onPressed: clearScreen,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
