// Task 4: Function with Required Positional Parameters
// Write a function introduce(String name, int age) that prints:
// My name is [name] and I am [age] years old.
// 1.
// 2. Make both parameters required (no default values).
// Example Call:
// introduce("Huzaifa", 22);

// Output:
// My name is Huzaifa and I am 22 years old.

import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;
  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);
  introduce(name, age);
}

introduce(String name, int age) {
  print("My name is $name and I am $age years old.");
}
