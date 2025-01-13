// Task 3: Logical Operator Practice
// 1. Declare three bool variables: hasLicense, isOver18, and ownsCar.
// 2. Use logical operators (&&, ||, !) and if-else statements to determine:
// ○ If the person can legally drive a car.
// ○ If the person doesn’t own a car but meets the other conditions, print: "You can
// rent a car."

// ○ If neither condition is met, print: "You cannot drive."

void main() {
  bool hasLicense = true;
  bool isOver18 = true;
  bool ownsCar = false;

  if (hasLicense == true && isOver18 == true && ownsCar == true) {
    print("You can legally drive a car");
  } else if (hasLicense == true && isOver18 == true && ownsCar == false) {
    print("You can rent a car.");
  } else if (hasLicense == false || isOver18 == false || ownsCar == false) {
    print("You cannot drive.");
  }
}
