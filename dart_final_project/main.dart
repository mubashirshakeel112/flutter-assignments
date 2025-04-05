import 'dart:convert';
import 'dart:io';

import 'student.dart';
import 'user.dart';

void main() async {
  List<Student> students = await loadStudentsFromFile();
  List<User> users = await loadUsersFromFile();

  // SignUp/Login
  bool isAuthenticated = false;

  while (!isAuthenticated) {
    print("===== Welcome =====");
    print("1. SignUp");
    print("2. Login");
    print("3. Exit");
    stdout.write("Select the number: ");
    int entryPoint = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    if (entryPoint == 1) {
      await signUp(users);
      print("SignUp successful!");
      break;
    } else if (entryPoint == 2) {
      isAuthenticated = await logIn(users);
    } else if (entryPoint == 3) {
      return;
    } else {
      print("Please select a valid option.");
    }
  }

  // show the student management
  menu(students);
}

// Student Menu

void menu(List<Student> students) async {
  while (true) {
    print("Welcome to the Student Management System");
    print("1. Add Student");
    print("2. List Student");
    print("3. Delete Student");
    print("4. Update Student");
    print("5. Search Student");
    print("6. Exit Student");
    stdout.write("Select the number: ");
    int number = int.parse(stdin.readLineSync()!);
    if (number == 1) {
      await addStudent(students);
    } else if (number == 2) {
      listStudents(students);
    } else if (number == 3) {
      deleteStudent(students);
    } else if (number == 4) {
      updateStudent(students);
    } else if (number == 5) {
      searchStudent(students);
    } else if (number == 6) {
      return;
    }
  }
}

// SignUp Function

Future<void> signUp(List<User> users) async {
  stdout.write("Enter Student Name: ");
  String? name = stdin.readLineSync();

  String? email;
  while (true) {
    stdout.write("Enter Student Email: ");
    email = stdin.readLineSync();

    if (email == null || !email.contains('@')) {
      print("Invalid email. It must contain '@'. Try again.");
      continue;
    }

    bool emailExists = users.any((user) => user.email == email);
    if (emailExists) {
      print(
        "This email is already registered. Please enter a different email.",
      );
    } else {
      break;
    }
  }

  int password;
  while (true) {
    stdout.write("Enter Student Password (Max 8 digits): ");
    String? input = stdin.readLineSync();

    if (input == null || input.length > 8) {
      print("Password must not be more than 8 characters. Try again.");
      continue;
    }

    password = int.tryParse(input) ?? -1;
    if (password < 0) {
      print("Password must be numeric. Try again.");
    } else {
      break;
    }
  }

  User newSignUp = User(name: name, email: email, password: password);
  users.add(newSignUp);
  await saveUsersToFile(users);
  print("✅ Signup successful!");
}

// LogIn Function
Future<bool> logIn(List<User> users) async {
  stdout.write("Enter Student Email: ");
  String? email = stdin.readLineSync();

  if (email == null || email.isEmpty) {
    print("Email cannot be empty.");
    return false;
  }

  stdout.write("Enter Student Password: ");
  String? inputPassword = stdin.readLineSync();

  if (inputPassword == null || inputPassword.isEmpty) {
    print("Password cannot be empty.");
    return false;
  }

  int password = int.tryParse(inputPassword) ?? -1;

  for (var user in users) {
    if (user.email == email && user.password == password) {
      print("Login successful!");
      return true;
    }
  }

  print("Invalid email or password!");
  return false;
}

// Add Student Function
Future<void> addStudent(List<Student> students) async {
  stdout.write("Enter Name: ");
  String name = stdin.readLineSync()!;
  int id;

  while (true) {
    stdout.write("Enter 5-digit ID: ");
    id = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

    if (id < 0 ||
        id.toString().length != 5 ||
        students.any((s) => s.id == id)) {
      print("Invalid or duplicate ID.");
    } else {
      break;
    }
  }

  stdout.write("Enter Course: ");
  String course = stdin.readLineSync()!;

  students.add(Student(name: name, id: id, course: course));
  await saveStudentsToFile(students);
  print("Student added.");
}

// Show list of student
void listStudents(List<Student> students) {
  if (students.isEmpty) {
    print("No students found.");
  } else {
    for (var s in students) {
      s.showDetail();
    }
  }
}

// Delete student by id
Future<void> deleteStudent(List<Student> students) async {
  stdout.write("Enter ID to delete: ");
  int id = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

  students.removeWhere((s) => s.id == id);
  await saveStudentsToFile(students);
  print("Student deleted if ID existed.");
}

// Update student by id
Future<void> updateStudent(List<Student> students) async {
  stdout.write("Enter ID to update: ");
  int id = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

  for (var s in students) {
    if (s.id == id) {
      print("1. Update Name\n2. Update Course");
      stdout.write("Choice: ");
      int choice = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

      if (choice == 1) {
        stdout.write("Enter new name: ");
        s.name = stdin.readLineSync();
      } else if (choice == 2) {
        stdout.write("Enter new course: ");
        s.course = stdin.readLineSync();
      }
      await saveStudentsToFile(students);
      print("Student updated.");
      return;
    }
  }
  print("ID not found.");
}

// Search student by id
void searchStudent(List<Student> students) {
  stdout.write("Enter ID to search: ");
  int id = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  for (var s in students) {
    if (s.id == id) {
      s.showDetail();
      return;
    }
  }
  print("Student not found.");
}

Future<void> saveStudentsToFile(List<Student> students) async {
  final file = File('dart_final_project/students.json');

  if (!file.existsSync()) {
    await file.create();
  }

  final jsonList = students.map((s) => s.toJson()).toList();
  await file.writeAsString(jsonEncode(jsonList));
}

Future<List<Student>> loadStudentsFromFile() async {
  final file = File('dart_final_project/students.json');

  if (!file.existsSync()) return [];

  final contents = await file.readAsString();

  if (contents.trim().isEmpty) {
    return [];
  }

  final List decoded = jsonDecode(contents);
  return decoded.map((e) => Student.fromJson(e)).toList();
}

Future<void> saveUsersToFile(List<User> users) async {
  final file = File('dart_final_project/users.json');
  final jsonList = users.map((u) => u.toJson()).toList();
  await file.writeAsString(jsonEncode(jsonList));
}

Future<List<User>> loadUsersFromFile() async {
  final file = File('dart_final_project/users.json');
  if (!file.existsSync()) return [];

  final contents = await file.readAsString();
  final List decoded = jsonDecode(contents);
  return decoded.map((e) => User.fromJson(e)).toList();
}
