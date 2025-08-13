// bedanya dengan extends ; kalau extends hanya bisa satu, kalau Stringerface bisa lebih dari satu
// di dart saat membuat class aslinya di dalamnya terdapat Stringerface
// best practice nya semua di jadikan abstract
// Stringerface harus di deklarasaikan ulang semuanya

class Car {
  String name = '';

  void drive() {}

  String getVroomVroom() {
    return "";
  }
}

class Tesla implements Car {
  String name = "Tesla";

  void drive() {
    print("Go to chicago");
  }

  String getVroomVroom() {
    String vroom = "Vroom vrooom";
    return vroom;
  }
}
