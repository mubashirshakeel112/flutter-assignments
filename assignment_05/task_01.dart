// Task 1: Null Safety Basics
// 1. Declare a nullable String variable name.
// 2. Assign it a value and print it.
// 3. Set it to null, check if it is null, and print a message accordingly.
// Example:
// String? name = "Huzaifa";
// print(name); // Output: Huzaifa
// name = null;
// if (name == null) {
// print("Name is null!");
// }

void main() {
  String? name = "Mubashir";
  print(name);
  name = null;
  if (name == null) {
    print("Name is Null");
  }
}
