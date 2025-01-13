// Task 8: Using break
// 1. Write a program to find the first number greater than 100 that is divisible by both 3 and
// 7.
// 2. Use a while loop and the break keyword to exit the loop once the number is found.
// 3. Print the number with a message: "The first number greater than 100 divisible by 3 and 7
// is number."

void main() {
  int i = 0;
  while (true) {
    if (i > 100 && i % 3 == 0 && i % 7 == 0) {
      print("The first number greater than 100 divisible by 3 and 7 is $i.");
      break;
    }
    i++;
  }
}
