// Task 9: Remove Duplicates from a List
// Write a program to remove duplicates from a list while maintaining the order of elements.
// Example Input:
// List: [1, 2, 3, 2, 4, 3, 5]
// Output:
// Updated List: [1, 2, 3, 4, 5]

void main() {
  List<int> numbers = [1, 2, 3, 2, 4, 3, 5,];
  var updatedNumbers = numbers.toSet().toList();
  print("Updated List: $updatedNumbers");
}
