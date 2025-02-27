// Task 3: Encapsulation (Getters & Setters)
// Create a  Student  class with:
// ●  Private  _marks  (int)
// ●  A  getter  that returns marks
// ●  A  setter  that ensures marks  cannot be negative or  greater than 100
// Create a student object, try setting invalid marks, and print the final marks.

void main() {
  Student student = Student();
  student.marks = 20;
  print(student.marks);

  student.marks = -10;
  print(student.marks);

  student.marks = 150;
  print(student.marks);
}

class Student {
  int _marks = 0;

  int get marks {
    return _marks;
  }

  set marks(int marks) {
    if (marks >= 0 && marks <= 100) {
      _marks = marks;
    } else {
      print("Invalid marks");
    }
  }
}
