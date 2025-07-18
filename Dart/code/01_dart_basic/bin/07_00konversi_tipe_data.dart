void main() {
  var angkaString = '99';

  var angkaInt = int.parse(angkaString);
  var angkaDouble = double.parse(angkaString);

  print(angkaString);
  print(angkaInt);
  print(angkaDouble);

  var intToDouble = angkaInt.toDouble();
  var doubleToInt = angkaDouble.toInt();
  var intToString = angkaInt.toString();
  var doubleToString = angkaDouble.toString();

  print(intToDouble);
  print(doubleToInt);
  print(intToString);
  print(doubleToString);
}
