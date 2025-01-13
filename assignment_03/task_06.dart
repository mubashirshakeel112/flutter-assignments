// Task 6: Prime Number Checker
// 1. Write a program to check if a given number is a prime number or not.
// 2. Use a for loop to iterate through potential divisors.
// 3. If the number is divisible by any number other than 1 and itself, print: "Not a prime
// number."
// 4. Otherwise, print: "Prime number."

import 'dart:io';

void main() {
  stdout.write("Enter the number: ");
  int n = int.parse(stdin.readLineSync()!);
  bool isPrime = true;

  if (n < 1) {
    isPrime = false;
  }else{
    for (var i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      isPrime = false;
      break;
    }
  }
  }

  if (isPrime) {
    print("Prime number");
  } else {
    print("Not a prime number");
  }
}
