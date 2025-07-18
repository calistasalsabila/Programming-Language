void main(){
  dynamic a = 10;

  // error
  // var aString = a as String; 
  // print(aString);

  var aInt = a as int; // casting dynamic to int
  print(aInt); // 10

  print(aInt is int); // true, checks if aInt is of type int
  print(aInt is String); // false, checks if aInt is of type String

  // using 'is' with '!' to check if aInt is not of type String
  print(aInt is! String); // true, aInt is not a String
  print(aInt is! int); // false, aInt is indeed an int
}