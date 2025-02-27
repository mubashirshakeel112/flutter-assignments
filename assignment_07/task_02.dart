// Task 2: Named Constructor
// Modify the  Car  class to add a  named constructor  oldCar()  that sets a default mileage of
// 100,000  for cars older than  10 years  .
// ●  Create a car using this named constructor and print its details.

import 'car_blue_print.dart';

void main() {
  Car car1 = Car.oldCar(brand: "Honda", model: "Civic", year: 2014);
  print(car1.mileage);
  Car car2 = Car.oldCar(brand: "Toyota", model: "Corolla", year: 2016);
  print(car2.mileage);
}
