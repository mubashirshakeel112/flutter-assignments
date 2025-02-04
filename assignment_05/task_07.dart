// Task 7: Function Using List and Map
// 1. Write a function printStudents(List<Map<String, dynamic>> students) that
// prints student names and their scores.
// Example List:
// var students = [
// {"name": "Ali", "score": 85},
// {"name": "Sara", "score": 90},
// {"name": "John", "score": null}
// ];

// Expected Output:
// Student: Ali, Score: 85
// Student: Sara, Score: 90
// Student: John, Score: Not available

void main() {
  var students = [
    {"name": "Ali", "score": 85},
    {"name": "Sara", "score": 90},
    {"name": "John", "score": null},
  ];
  printStudents(students);
}

printStudents(List<Map<String, dynamic>> students) {
  for (var student in students) {
      print("Student: ${student['name']}, Score: ${student['score'] ?? "Not available"}");
  }
}
