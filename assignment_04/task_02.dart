// Task 2: Using Continue
// 1. Write a program that prints all the numbers from 1 to 50, but skips:
// ○ Multiples of 3
// ○ Numbers containing the digit 5
// Example Output:

// 1, 2, 4, 7, 8, 11, ...

void main() {
  int n = 50;
  for (var i = 1; i <= n; i++) {
    if (i % 3 == 0 || i.toString().contains('5')) {
      continue;
    }
    print(i);
  }
}
