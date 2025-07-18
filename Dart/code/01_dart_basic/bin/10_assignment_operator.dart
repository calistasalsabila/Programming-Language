// asignment operator
void main() {
  // Assignment
  double a = 10;
  int b = 5;

  print('a = $a'); // 10

  // Addition assignment
  a += b;
  print('a += b -> $a'); // 15

  // Subtraction assignment
  a -= 3;
  print('a -= 3 -> $a'); // 12

  // Multiplication assignment
  a *= 2;
  print('a *= 2 -> $a'); // 24

  // Division assignment
  a /= 5.0;
  print('a /= 5 -> $a'); // 4.8

  // Modulus assignment
  a %= 5;
  print('a %= 5 -> $a'); // 4.8

  // Increment and Decrement

  a = 5;

  a++;
  print('a++ -> $a'); // 6

  ++a;
  print('++a -> $a'); // 7

  a--;
  print('a-- -> $a'); // 6

  --a;
  print('--a -> $a'); // 5

  b = 0;

  var c = b++;

  print(b); // 1, karena b sudah di increment
  print(c); // 0, karena b++ mengembalikan nilai sebelum increment

  var d = 0;

  var e = ++d;
  print(d); // 1, karena ++d sudah di increment
  print(e); // 1, karena ++d mengembalikan nilai setelah increment
}
