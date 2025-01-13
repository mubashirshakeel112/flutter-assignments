// Task 4: Grade Calculation with Loops

// 1. Declare a list of marks for 5 students: [95, 76, 58, 89, 66].
// 2. Use a for loop to determine and print the grade for each student based on the following
// criteria:
// ○ Marks >= 90: Grade A
// ○ Marks >= 80: Grade B
// ○ Marks >= 70: Grade C
// ○ Marks >= 60: Grade D
// ○ Marks < 60: Fail
// Output format:
// Student 1: Marks = 95, Grade = A
// Student 2: Marks = 76, Grade = C

void main() {
  List<int> marksOfStudent = [
    95,
    76,
    58,
    89,
    66,
  ];

  int student = 0;

  for (int i = 0; i < marksOfStudent.length; i++) {
    String grade = "";
    if (marksOfStudent[i] >= 90 && marksOfStudent[i] <= 100) {
      grade = "A";
      student++;
    } else if (marksOfStudent[i] >= 80) {
      grade = "B";
      student++;
    } else if (marksOfStudent[i] >= 70) {
      grade = "C";
      student++;
    } else if (marksOfStudent[i] >= 60) {
      grade = "D";
      student++;
    } else {
      grade = "Fail";
      student++;
    }
    print("Student $student: Marks = ${marksOfStudent[i]} Grade $grade");
  }
}
