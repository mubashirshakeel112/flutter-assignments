// Task 2: Grading System
// 1. Create a variable marks to store a student's marks (out of 100).
// 2. Use if, else if, and else statements to assign grades based on the following
// criteria:
// ○ Marks >= 90: Grade A
// ○ Marks >= 80: Grade B
// ○ Marks >= 70: Grade C
// ○ Marks >= 60: Grade D
// ○ Marks < 60: Fail
// 3. Print the grade with a message (e.g., "Marks: 85, Grade: B").

void main() {
  double marks = 70;
  String grade = "";

  if (marks >= 90 && marks <= 100) {
    grade = "A";
  } else if (marks >= 80) {
    grade = "B";
  } else if (marks >= 70) {
    grade = "C";
  } else if (marks >= 60) {
    grade = "D";
  } else {
    grade = "Fail";
  }

  print("Marks: $marks, Grade: $grade");
}
