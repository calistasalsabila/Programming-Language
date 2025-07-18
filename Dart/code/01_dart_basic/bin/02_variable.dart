/// [slash 3x] -> documentatiton comment , digenerate jadi dart doc


// without variable
void main() {
  print("wut");
  print("wut");
  print("wut"); // lama gaes

  // variable tidak langsung
  String fast;
  fast = "Im fast hahaha, kidding friend.";
  print(fast);

  // variable langsung
  String walk = "Yo im walk walk ahhahaha";
  print(walk);

  var mc = "Cale";
  print(mc);

  // final
  final reader = "Dokja";
  // reader = "Jeha"; error ya
  print(reader);

  final array1 = [1, 2, 3];
  const array2 = [1, 2, 3];

  array1[0] = 7; // bisa dan ini bole
  // array2[0] = 7; // error ya

  // array1 = [4, 5, 6]; // error ya, g bole, karena final, tapi kalo satu satu bole
  // array2 = [4, 5, 6]; // error ya, ini jg g bole

  print(array1);
  print(array2);

  late var value = getValue();
  print("Variable sudah di buat");
  print(value);
}

String getValue() {
  print("getName dipanggil");
  return "Cale";
}

// without late 
// getName dipanggil
// Variable sudah di buat
// Cale


// with late
// Variable sudah di buat
// getName dipanggil
// Cale