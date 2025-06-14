void hiReader({String? firstName, String? lastName}) {
  print("Hi $firstName $lastName");
}

void main() {
  hiReader(); // bisa karena default nya nullable
  hiReader(lastName: "Nakahara", firstName: "Chuuya");
  hiReader(lastName: "Herdhart");
  // Error , wajib nyebutin named parameter
  // hiReader("Kyle", "Ettman");

  hiReader1(firstName: "Felix");
  hiReader1(firstName: 'Xiao');
  hiReader1(firstName: "Kazuha", lastName: "Kaedehara");
}

void hiReader1({ required firstName, String lastName = ' '}) { // required wajib ya
  print("Hi $firstName $lastName");
}


// Hi null null
// Hi Chuuya Nakahara
// Hi null Herdhart
// Hi Felix
// Hi Xiao
// Hi Kazuha Kaedehara