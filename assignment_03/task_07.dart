// Task 7: Understanding continue
// 1. Write a program that prints all numbers from 1 to 10, except the number 5.
// 2. Use a for loop and the continue keyword.

void main() {
  int number = 10;
  for (int i = 1; i <= number; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
}
