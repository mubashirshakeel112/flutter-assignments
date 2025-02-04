// Task 8: Function Using Null Safety & Operators
// 1. Write a function calculateArea(int? length, int? width) that:
// ○ Uses the null-aware operator (??) to set default values (length = 5, width =
// 5).
// ○ Prints the calculated area.

// Example Call:
// calculateArea(null, 10);

void main() {
  calculateArea(null, 10);
}

calculateArea(int? length, int? width) {
  int finalLength = length ?? 5;
  int finalWidth = width ?? 5;

  print(finalLength * finalWidth);
}
