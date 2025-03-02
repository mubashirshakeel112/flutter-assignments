// Task 4: Processing a List of Objects
// Create a Vehicle class with:
// ● brand
// ● year
// ● A method showDetails()
// Then, create two subclasses:
// ● Car (extra field: fuelType)
// ● Motorcycle (extra field: engineCapacity)
// ✅ Create a list of vehicles (both cars & motorcycles) and print their details.

void main() {
  List<Vehicle> vehicles = [
    Car(fuelType: "Petrol", brand: "Toyota", year: 2010),
    Car(fuelType: "Diesel", brand: "Honda", year: 2014),
    Motorcycle(engineCapacity: "500CC", brand: "Yamaha", year: 2022)
  ];
  for (var vehicle in vehicles) {
    vehicle.showDetails();
  }
}

class Vehicle {
  String? brand;
  int? year;

  Vehicle({this.brand, this.year});

  void showDetails() {
    print("Brand: $brand, Year: $year");
  }
}

class Car extends Vehicle {
  String? fuelType;

  Car({this.fuelType, String? brand, int? year})
      : super(brand: brand, year: year);

  @override
  void showDetails() {
    print("Brand: $brand, Year: $year, FuelType: $fuelType");
  }
}

class Motorcycle extends Vehicle {
  String? engineCapacity;

  Motorcycle({this.engineCapacity, String? brand, int? year})
      : super(brand: brand, year: year);

  @override
  void showDetails() {
    print("Brand: $brand, Year: $year, EngineCapacity: $engineCapacity");
  }
}
