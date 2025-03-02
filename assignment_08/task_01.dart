// Task 1: Inheritance Basics (Super Constructor Call)
// Create a Person class with:
// ● name (String)
// ● age (int)
// ● A constructor to initialize them
// A method introduce() that prints:
// Hi, my name is {name} and I am {age} years old.
// ●
// Then, create a Student class that inherits from Person and adds:
// ● grade (String)
// ● A constructor that calls super to initialize name and age
// A method showStudentDetails() that prints:
// Name: {name}, Age: {age}, Grade: {grade}
// ●
// ✅
//  Create a student object and call introduce() and showStudentDetails().

void main() {
  Student student = Student(name: "Mubashir", age: 18, grade: "A1");
  student.introduce();
  student.showStudentDetails();
}

class Person {
  String? name;
  int? age;

  Person({this.name, this.age});

  void introduce() {
    print("Hi, my name is ${name} and I am ${age} years old.");
  }
}

class Student extends Person {
  String? grade;

  Student({this.grade, String? name, int? age}) : super(name: name, age: age);

  void showStudentDetails() {
    print("Name: $name, Age: $age, Grade: $grade");
  }

  void introduce() {
     super.introduce();
  }
}
