// Task 6: Number Analysis with Conditions
// 1. Write a program to process a list of numbers:
// ○ Count how many numbers are even and odd.
// ○ Find the sum of all positive numbers.
// Example Input:
// List: [12, -7, 5, -3, 14, 9, 0]
// Output:
// Even Numbers: 3
// Odd Numbers: 3
// Sum of Positive Numbers: 40

void main() {
  List<int> numbers = [12, -7, 5, -3, 14, 9, 0];
  int even = 0;
  int odd = 0;
  int sum = 0;
  for (var number in numbers) {
    if (number % 2 == 0) {
      even++;
    } else {
      odd++;
    }

    if (number > 0) {
      sum += number;
    }
  }

  print("Even Number: $even");
  print("Odd Number: $odd");
  print("Sum of Positive Number: $sum");
}
