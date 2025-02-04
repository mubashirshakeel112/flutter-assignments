// Task 2: Handling Null with Default Values
// 1. Write a program that asks for a user's age but allows it to be null.
// 2. If the age is null, print "Age not provided", otherwise print the age.
// 3. Use the null-coalescing operator (??) to provide a default value of 18 if no age is given.
// Example Output:
// User Age: 25
// User Age: Age not provided
// Default Age: 18


import 'dart:io';

void main() {
  stdout.write("Enter Your Age: ");
  String? user = stdin.readLineSync();
  int? age = int.tryParse(user!);
  int finalAge = age ?? 18;

  if (age == null) {
    print("Age not provided");
  } else {
    print("User Age: $age");
  }
  print("Default Age: $finalAge");
}
