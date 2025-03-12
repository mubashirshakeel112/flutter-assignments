// Task 2: Polymorphism - Shape Drawing System 
// Create an abstract class Shape with: 
// ● An abstract method calculateArea() 
// Then, create two subclasses: 
// 1. Circle (extra field: radius) 
// ○ Implement calculateArea() to return π * radius² 
// 2. Rectangle (extra fields: length, width) 
// ○ Implement calculateArea() to return length × width 
// ✅ Create a list of Shape objects and call calculateArea() for each one. 


void main() {
  List<Shape> shapes = [Circle(radius: 10), Rectangle(length: 5, width: 10)];

  for (var shape in shapes) {
    print("Area of ${shape.runtimeType} ${shape.calculateArea()}");
  }
}

abstract class Shape {
  calculateArea();
}

class Circle extends Shape {
  double radius;
  double pi = 3.141;

  Circle({required this.radius});

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle({required this.length, required this.width});

  @override
  double calculateArea() {
    return length * width;
  }
}
