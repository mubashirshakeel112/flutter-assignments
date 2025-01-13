// Task 5: Number Pattern
// Use nested for loops to print the following pattern:
// 1
// 1 2
// 1 2 3
// 1 2 3 4
// 1 2 3 4 5

void main() {
  List<int> n = [1, 2, 3, 4, 5];
  for (int i = 1; i <= n.length; i++) {
    for (int j = 1; j <= i; j++) {
      print(j);
    }
  }
}
