// Task 5: Managing Employees using Abstraction & Static Methods 
// Create an abstract class Employee with: 
// ● name, salary 
// ● An abstract method calculateBonus() 
// Then, create two subclasses: 
// 1. Developer 
// ○ Implement calculateBonus() as salary * 0.1 
// 2. Manager 
// ○ Implement calculateBonus() as salary * 0.2 
// ✅ Create employee objects, store them in a list, and calculate bonuses for all.

void main() {
  Employee developer1 = Developer(name: "Ali", salary: 50000);
  Employee developer2 = Developer(name: "Kashan", salary: 60000);
  Employee manager1 = Manager(name: "Shariq", salary: 80000);
  Employee manager2 = Manager(name: "Abdullah", salary: 90000);

  List<Employee> employees = [developer1, developer2, manager1, manager2];

  for (var employee in employees) {
    print("${employee.name} (${employee.runtimeType}) : ${employee.calculateBonus()}");
  }
}

abstract class Employee {
  String name;
  double salary;

  Employee({required this.name, required this.salary});

  calculateBonus();
}

class Developer extends Employee {
  Developer({required String name, required double salary})
    : super(name: name, salary: salary);
  @override
  double calculateBonus() {
    return salary * 0.1;
  }
}

class Manager extends Employee {
  Manager({required String name, required double salary})
    : super(name: name, salary: salary);
  @override
  double calculateBonus() {
    return salary * 0.2;
  }
}
