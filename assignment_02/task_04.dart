// Task 4: Operator Precedence
// Declare a variable result and calculate the following expression:
// int a = 5, b = 10, c = 15;
// var result = a + b * c - (a + b) * c;
// 1.
// 2. Print the value of result.
// 3. Explain the output in comments, highlighting the precedence of operators used in the
// calculation.

void main() {
  int a = 5;
  int b = 10;
  int c = 15;

  var result = a + b * c - (a + b) * c;

  // Parentheses `()` have the highest precedence.
  // Multiplication `*` and division `/` come next (evaluated left to right).
  // Addition `+` and subtraction `-` have the lowest precedence (evaluated left to right).

  // (a + b) is calculated first.
  // Second b * c.
  // Third (a + b) * c.
  // Fourth a + value of b * c.
  
  print("Result: $result"); 

}
