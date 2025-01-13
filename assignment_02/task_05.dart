// Task 5: Simple Password Checker
// 1. Create a String variable password and assign a password (e.g., "flutter123").
// 2. Ask the user to input a password.
// 3. Use an if-else statement to check:
// ○ If the entered password matches password, print: "Access granted."
// ○ Otherwise, print: "Access denied."

import 'dart:io';

void main() {
  stdout.write("Enter your password: ");
  String userPassword = stdin.readLineSync()!;
  String password = "flutter123";
  if (userPassword == password) {
    print("Access granted.");
  } else {
    print("Access denied.");
  }
}
