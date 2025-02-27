// Create a Car class with the following properties:
// ● brand (String)
// ● model (String)
// ● year (int)
// ● mileage (double)
// Add a method drive(double distance) that increases mileage.
// ● Create two car objects, drive them for different distances, and print the updated mileage.

import 'car_blue_print.dart';

void main() {
  Car car1 = Car(brand: "Honda", model: "Civic", year: 2016);
  car1.drive(12);
  car1.drive(40);
  print(car1.mileage);

  Car car2 = Car(brand: "Toyota", model: "Grande", year: 2014);
  car2.drive(120.0);
  print(car2.mileage);
}

