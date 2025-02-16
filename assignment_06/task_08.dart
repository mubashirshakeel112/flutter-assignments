// Task 8: Function with List Processing 
// 1. Create a function filterEvenNumbers(List<int> numbers) that returns a list 
// containing only even numbers. 
// 2. Use where() function inside it. 
// Example Call: 
// List<int> evens = filterEvenNumbers([1, 2, 3, 4, 5, 6]); 
// print(evens); 
// Expected Output: 
// [2, 4, 6]

void main() {
  var result = filterEvenNumbers([1, 2, 3, 4, 5, 6]);
  print(result);
}

List<int> filterEvenNumbers(List<int> numbers) {
  return numbers.where((number) => number.isEven).toList();
}
