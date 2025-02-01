// Task 3: Using Break
// 1. Write a program to find the first number in a list that is divisible by both 7 and 13.
// ○ Stop processing the list as soon as such a number is found.
// Example Input:
// List: [10, 21, 42, 91, 182, 364]
// Output:
// First Number: 91

void main() {
  List<int> numbers = [10, 21, 42, 91, 182, 364];

  for (var number in numbers) {
    if (number % 7 == 0 && number % 13 == 0) {
      print("First Number: $number");
      break;
    }
  }
}
