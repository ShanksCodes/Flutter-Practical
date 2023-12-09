class Mobile {
  String brand;
  String color;
  double camera;

  // Constructor to initialize the mobile object
  Mobile(this.brand, this.color, this.camera);

  // Method to print mobile details
  void printDetails() {
    print("Brand: $brand");
    print("Color: $color");
    print("Camera: $camera MP");
  }
}

void main() {
  // Initialize three mobile objects
  Mobile mobile1 = Mobile("Samsung", "Black", 12.0);
  Mobile mobile2 = Mobile("iPhone", "White", 16.0);
  Mobile mobile3 = Mobile("Google Pixel", "Silver", 12.0);

  // Print details of the mobile objects
  print("Mobile 1 Details:");
  mobile1.printDetails();

  print("\nMobile 2 Details:");
  mobile2.printDetails();

  print("\nMobile 3 Details:");
  mobile3.printDetails();
}
