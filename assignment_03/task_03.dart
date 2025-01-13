// Task 3: FizzBuzz Game
// 1. Write a program to print numbers from 1 to 50 with the following rules:
// ○ If the number is divisible by 3, print "Fizz" instead of the number.
// ○ If the number is divisible by 5, print "Buzz" instead of the number.
// ○ If the number is divisible by both 3 and 5, print "FizzBuzz" instead of the number.
// 2. Use a for loop.

void main() {
  int number = 50;

  for (var i = 1; i <= number; i++) {
    if (i % 3 == 0) {
      print("Fizz");
    } else if (i % 5 == 0) {
      print("Buzz");
    } else if (i % 3 == 0 && i % 5 == 0) {
      print("FizzBuzz");
    }
  }
}
