void main() {
  int number1;
  int? number2;

  number2 = null; //bisa karena ada ? 

  // print(number1); error ya
  print(number2); // null

  // atau gini
  int number3;
  number3 = 3;
  // number3 = null; error karena int tanpa ? tidak nullable
}
