class Car {
  /*
    Create a Car class with properties:
    ●     brand (String),
    ●     model (String),
    ●     year (int),
    ●     milesDriven (double).
  */
  late String _brand;
  late String _model;
  late int _year;
  late double _milesDriven = 0;

  // Include a static property numberOfCars.
  static int numberOfCars = 0;

  Car({required brand, required model, required year}) {
    // Track the total number of Car objects created..
    this._brand = brand;
    this._model = model;
    this._year = year;
    numberOfCars++;
  }

  // Methods of this class are:

  // drive(double miles):
  // Increases the milesDriven property by the provided distance value, simulating driving.
  void drive(double miles) {
    this._milesDriven += miles;
  }

  // ●     getMilesDriven(): Retrieves the current milesDriven value.
  double getMilesDriven() {
    return this._milesDriven;
  }

  // ●     getBrand(): Retrieves the brand of the car.
  String getBrand() {
    return this._brand;
  }

  // ●     getModel(): Retrieves the model of the car.
  String getModel() {
    return this._model;
  }

  // ●     getYear(): Retrieves the manufacturing year of the car.
  int getYear() {
    return this._year;
  }

  // getAge(): Calculates and returns the age of the car.
  int getAge() {
    var now = new DateTime.now();
    return now.year - this._year;
  }

  // As all out are in same format that's why overriden toString to get the exact out form here
  @override
  String toString() {
    return 'Car $numberOfCars: ${this.getBrand()} ${this.getModel()} ${this.getYear()} Miles: ${this.getMilesDriven()} Age: ${this.getAge()}';
  }
}

void main() {
  /// Car 1: Toyota Camry 2020 Miles: 10000 Age: 3
  Car toyota = Car(brand: "Toyota", model: "Camry", year: 2020);
  toyota.drive(10000);
  print(toyota.toString());

  /// Car 2: Honda Civic 2018 Miles: 8000 Age: 5
  Car honda = Car(brand: "Honda", model: "Civic", year: 2018);
  honda.drive(8000);
  print(honda.toString());

  /// Car 3: Ford F-150 2015 Miles: 15000 Age: 8 Total number of cars created: 3
  Car ford = Car(brand: "Ford", model: "F-150", year: 2015);
  ford.drive(15000);
  print(
      "${ford.toString()}  Total number of cars created: ${Car.numberOfCars}");
}
