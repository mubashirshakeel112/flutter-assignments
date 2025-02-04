// Task 3: Function without Return Statement
// 1. Write a function printGreeting(String name) that prints "Hello, [name]!".
// 2. Call this function with different names.
// Example Output:
// Hello, Ali!

// Hello, Sara!

import 'dart:io';

void main() {
  stdout.write("Enter name: ");
  String name = stdin.readLineSync()!;
  printGreeting(name);
}

printGreeting(String name) {
  print("Hello, $name!");
}
