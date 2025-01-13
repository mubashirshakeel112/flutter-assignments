// Task 1: Multiplication Table Generator
// 1. Write a program to generate the multiplication table for a given number (e.g., 5).
// Use a for loop to print the table in the format:
// 5 x 1 = 5
// 5 x 2 = 10
// ...
// 5 x 10 = 50

import 'dart:io';

void main() {
  stdout.write("Enter the table: ");
  int tableOf = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <= 10; i++) {
    int multiply = tableOf * i;
    print("$tableOf x $i = $multiply");
  }
}
