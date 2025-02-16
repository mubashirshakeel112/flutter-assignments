// Task 9: Function with Map Processing 
// 1. Given a list of maps representing students with their scores: 
// List<Map<String, dynamic>> students = [ 
// {"name": "Ali", "score": 85}, 
// {"name": "Sara", "score": 90}, 
// {"name": "John", "score": 78} 
// ]; 
// 2. Write a function printTopStudent(List<Map<String, dynamic>> students) 
// that finds and prints the student with the highest score. 
// Expected Output: 
// Top student: Sara with score 90

void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Ali", "score": 85},
    {"name": "Sara", "score": 90},
    {"name": "John", "score": 78}
  ];
  printTopStudent(students);
}

printTopStudent(List<Map<String, dynamic>> students) {
  Map<String, dynamic> topStudent = students[0];
  for (var student in students) {
    if (student["score"] > topStudent["score"]) {
      topStudent = student;
    }
  }
  print("Top student: ${topStudent["name"]} with score ${topStudent["score"]}");
}
