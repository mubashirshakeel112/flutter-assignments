// Task 2: Superclass & Subclass Methods
// Create an Employee class with:
// ● name (String)
// ● salary (double)
// A method showEmployeeDetails() that prints:
// Employee Name: {name}, Salary: {salary}
// ●
// Then, create a Manager class that inherits from Employee and adds:
// ● teamSize (int)
// ● A method showManagerDetails() that prints both employee details and the team
// size
// ✅
//  Create a manager object and call showEmployeeDetails() and
// showManagerDetails().

void main() {
  Manager manager = Manager(name: "Ali", salary: 50000, teamSize: 5);
  manager.showEmployeeDetails();
  manager.showManagerDetails();
}

class Employee {
  String name;
  double salary;

  Employee({required this.name, required this.salary});

  void showEmployeeDetails() {
    print("Employee Name: $name, Salary: $salary");
  }
}

class Manager extends Employee {
  int teamSize;

  Manager({required this.teamSize, required String name, required double salary})
      : super(name: name, salary: salary);

  void showManagerDetails() {
    print("Employee Name: $name, Salary: $salary, TeamSize: $teamSize");
  }

  void showEmployeeDetails() {
    super.showEmployeeDetails();
  }
}
