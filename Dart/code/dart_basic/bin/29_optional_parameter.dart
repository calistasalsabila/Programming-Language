void hiReader(String firstName, [String? lastName]) {
  // optional parameter ga bisa di depan ya
  print("Hi $firstName $lastName");
}

void main() {
  hiReader("Cale");
  hiReader("Cale", "Henituse");

  hiReader1("Dazai");
  hiReader1("Dazai", "Osamu");

}

// biar hasil nya ga null pakai default value
// Hi Cale null
// Hi Cale Henituse

void hiReader1(String firstName, [String lastName = '']) {
  print("Hi $firstName $lastName");
}

// like this
// Hi Dazai 
// Hi Dazai Osamu
