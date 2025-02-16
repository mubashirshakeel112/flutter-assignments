// Task 5: Arrow Function 
// 1. Convert the following function into an arrow function: 
// int multiply(int a, int b) { 
// return a * b; 
// } 
// Example Call: 
// int result = multiply(3, 5); 
// print(result); 
// Expected Output: 
// 15

void main() {
  int result = multiply(3, 5);
  print(result);
}

int multiply(int a, int b) => a * b;
