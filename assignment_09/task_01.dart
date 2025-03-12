// Task 1: Abstraction in Action 
// Create an abstract class Device with: 
// ● brand (String) 
// ● An abstract method turnOn() 
// A non-abstract method showBrand() that prints: 
// Device brand: {brand} 
// Then, create two subclasses: 
// 1. Laptop (extra field: ramSize) 
// Implement turnOn() to print: 
// Laptop is turning on with {ramSize}GB RAM. 
// 2. Smartphone (extra field: screenSize) 
// Implement turnOn() to print: 
// Smartphone is turning on with {screenSize}-inch display. 
// ✅ Create objects of Laptop & Smartphone, call showBrand() and turnOn().

void main() {
  Device laptop = Laptop(ramSize: 16, brand: "Dell");
  laptop.turnOn();
  laptop.showBrand();
  print("------------------------------------------------");
  Device smartPhone = Smartphone(screenSize: 6.3, brand: "Samsung");
  smartPhone.turnOn();
  smartPhone.showBrand();
}

abstract class Device {
  String brand;

  Device({required this.brand});

  turnOn();

  void showBrand() {
    print("Device brand: $brand");
  }
}

class Laptop extends Device {
  int ramSize;

  Laptop({required this.ramSize, required String brand}) : super(brand: brand);

  @override
  turnOn() {
    print("Laptop is turning on with $ramSize GB RAM");
  }
}

class Smartphone extends Device {
  double screenSize;

  Smartphone({required this.screenSize, required String brand})
      : super(brand: brand);

  @override
  turnOn() {
    print("Smartphone is turning on with $screenSize-inch display");
  }
}
