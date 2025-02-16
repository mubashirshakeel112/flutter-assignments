// Task 6: Function as a Parameter 
// 1. Write a function applyOperation(int a, int b, Function operation) that 
// takes two integers and a function as a parameter. 
// 2. Pass addition and multiplication functions to applyOperation(). 
// Example Call: 
// int add(int x, int y) => x + y; 
// int multiply(int x, int y) => x * y; 
// applyOperation(5, 3, add); 
// applyOperation(5, 3, multiply); 
// Expected Output: 
// Result: 8 
// Result: 15

void main() {
  applyOperation(3, 5, add);
  applyOperation(3, 5, multiply);
}

applyOperation(int a, int b, Function operation) {
  if (operation == add) {
    print(add(a, b));
  } else if (operation == multiply) {
    print(multiply(a, b));
  }
}

int add(int x, int y) => x + y;
int multiply(int x, int y) => x * y;
