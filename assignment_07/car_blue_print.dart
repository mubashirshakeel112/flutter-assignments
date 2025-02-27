class Car {
  String? brand;
  String? model;
  int? year;
  double mileage ;

  Car({this.brand, this.model, this.year, this.mileage = 0.0});

  drive(double distance) {
    if (distance > 0) {
      mileage += distance;
    } else {
      print("Distance must be a positive value.");
    }
  }

    Car.oldCar({
    required this.brand,
    required this.model,
    required this.year,
  }) : mileage = (DateTime.now().year - year! > 10) ? 100000 : 0.0;
}
