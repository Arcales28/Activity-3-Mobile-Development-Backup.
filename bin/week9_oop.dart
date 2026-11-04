
class Motorcycle {
  // Properties
  String brand;
  String model;
  int year;

  // Private field for encapsulation
  int _mileage;

  // Constructor
  Motorcycle(this.brand, this.model, this.year, this._mileage);

  // Method to display motorcycle information
  void displayInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');
    print('Mileage: ${getMileage()} km');
  }

  // Method to access private mileage
  int getMileage() {
    return _mileage;
  }

  // Method to update mileage
  void updateMileage(int newMileage) {
    if (newMileage >= _mileage) {
      _mileage = newMileage;
      print('$model mileage updated successfully!');
    } else {
      print('Mileage cannot be reduced!');
    }
  }
}

void main() {
  Motorcycle genzo = Motorcycle('Yamaha', 'Mio i125', 2019, 42000);
  Motorcycle kapita = Motorcycle('Honda', 'Click 125', 2024, 15000);

  List<Motorcycle> motorcycles = [genzo, kapita];

  print('===== MOTORCYCLE MANAGEMENT SYSTEM =====');

  for (int i = 0; i < motorcycles.length; i++) {
    print('\nMotorcycle ${i + 1}');
    motorcycles[i].displayInfo();
  }

  print('\n===== MILEAGE UPDATE =====');
  genzo.updateMileage(45600);

  genzo.updateMileage(22168);

  // Display updated information
  print('\n===== UPDATED MOTORCYCLE INFO =====');
  genzo.displayInfo();
}
