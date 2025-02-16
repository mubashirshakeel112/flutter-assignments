// Task 2: Function with Return Type 
// 1. Create a function square(int number) that returns the square of the number. 
// 2. Call the function and print the returned value. 
// Example Call: 
// int result = square(4); 
// print(result); 
// Expected Output: 
// 16

import 'dart:io';

void main() {
  stdout.write("Enter the number: ");
  int number = int.parse(stdin.readLineSync()!);
  int result = square(number);
  print(result);
}

int square(int number) {
  int squareOf = number * number;
  return squareOf;
}
