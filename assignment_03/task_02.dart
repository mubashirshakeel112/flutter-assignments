// Task 2: Sum of Natural Numbers
// 1. Write a program to calculate the sum of the first n natural numbers (e.g., if n = 5, sum =
// 1 + 2 + 3 + 4 + 5 = 15).
// 2. Use a while loop.
// 3. Print the sum in the format: "The sum of the first 5 natural numbers is 15."

import 'dart:io';

void main() {
  stdout.write("Enter the natural number: ");
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  int i = 1;

  while (i <= n) {
    sum += i;
    i++;
  }
  print("The sum of the first $n natural number is $sum.");
}
