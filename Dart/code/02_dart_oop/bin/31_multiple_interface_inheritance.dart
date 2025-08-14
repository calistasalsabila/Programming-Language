class Car {
  String name = '';

  void drive() {}

  String getVroomVroom() {
    return "";
  }
}

// abstract class -> ga bisa di buat object
abstract class hasColor {
  String getColor();
}

class Tesla implements Car, hasColor {
  String name = "Tesla";
  String getColor() => "Blue Sky";

  void drive() {
    print("Go to chicago");
  }

  String getVroomVroom() {
    String vroom = "Vroom vrooom";
    return vroom;
  }
}
