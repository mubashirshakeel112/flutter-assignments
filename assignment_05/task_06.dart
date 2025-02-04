// Task 6: Function Calling Another Function
// 1. Write a function printRectangle(int width, int height) that prints a
// rectangle using *.
// 2. Inside this function, call another function printRow(int width) to print a single row
// of *.
// Example Call:

// printRectangle(4, 3);

// Output:
// ****
// ****
// ****

void main() {
  printRectangle(4, 3);
}

printRectangle(int width, int height) {
  for (var i = 0; i < height; i++) {
    printRow(width);
  }
}

printRow(int width) {
    String row = "*" * width;
    print(row);
}