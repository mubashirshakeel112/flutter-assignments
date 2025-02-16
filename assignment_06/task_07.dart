// 1. Write a function chooseOperation(String opType) that returns a function based
// on opType.
// 2. If opType is "add", return an addition function.
// 3. If opType is "multiply", return a multiplication function.
// Example Call:
// var operation = chooseOperation("add");
// print(operation(4, 6));  // Output: 10

void main() {
  Function(int, int) operation = chooseOperation("add");
  print(operation(4, 6));
}

chooseOperation(String opType) {
  if (opType == 'add') {
    return add;
  } else if (opType == 'multiply') {
    return multiply;
  }
}

int add(int x, int y) => x + y;
int multiply(int x, int y) => x * y;
