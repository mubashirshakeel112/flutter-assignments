// Task 8: Function as a Parameter
// Write a function  processNumber(int number, Function  operation)  that:
// ●  Applies the  operation  function to  number
// ●  Pass  doubleIt()  and  squareIt()  functions as parameters  to  processNumber()

void main() {
  processNumber(9, doubleIt);
  processNumber(6, squareIt);
}

processNumber(int number, Function operation) {
  if (operation == doubleIt) {
    print(number + number);
  } else if (operation == squareIt) {
    print(number * number);
  }
}

doubleIt() {}

squareIt() {}
