void main() {
  // Tanpa Ternary Opertor
  var grade = 100;
  String ok;

  if (grade >= 80) {
    ok = 'congrats';
  } else {
    ok = 'waduh bro';
  }

  print(ok);

  // Pakai ternary opertor
  var nilai = 97;
  var okay = nilai >= 80 ? 'congrtas' : 'waduh bro';

  print(okay);
}
