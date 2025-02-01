// Task 4: Process a List of Maps
// Write a program to process a list of maps representing employees:
// var employees = [
// {"name": "Ali", "age": 30, "salary": 50000},
// {"name": "Sara", "age": 25, "salary": 60000},
// {"name": "John", "age": 35, "salary": 55000}
// ];
// 1.
// ○ Find the average salary.
// ○ Filter employees earning more than 55000.
// Example Output:
// Average Salary: 55000
// Employees earning more than 55000: [Sara]

void main() {
  List<Map<String, dynamic>> employees = [
    {"name": "Ali", "age": 30, "salary": 50000},
    {"name": "Sara", "age": 25, "salary": 60000},
    {"name": "John", "age": 35, "salary": 55000}
  ];

  int sum = 0;
  int count = 0;
  List<String> getName = [];

  for (var employee in employees) {
    sum += employee['salary'] as int;
    count++;
    if (employee['salary'] > 55000) {
      getName.add(employee['name']);
    }
  }

  double average = sum / count;
  print("Average Salary: ${average.toStringAsFixed(0)}");
  print("Employees earning more than 55000: $getName");
}
