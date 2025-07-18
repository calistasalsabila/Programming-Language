void main(){
  // Map adalah koleksi yang menyimpan pasangan key-value
  // Mirip dengan dictionary di bahasa pemrograman python
  // Key harus unik, tapi value boleh duplikat

  // create map of int to String
  Map<int, String> mapIntString = {};

  // create map of String to int
  var mapStringInt = <String, int>{};
  print(mapIntString); // {}
  print(mapStringInt); // {}

  var names = <String, int>{
    'Kim Dokja': 1,
    'Hamin Lee': 2,
    'Cale Henituse': 3,
  };
  print(names); // {Kim Dokja: 1, Hamin Lee: 2, Cale Henituse: 3}


  print(names.length); // 3, jumlah key-value pair
  print(names['Kim Dokja']); // 1, akses value dengan key
  names.remove('Cale Henituse'); // remove Cale Henituse
  print(names); // {Kim Dokja: 1, Hamin Lee: 2}

  names['Gilyoung'] = 4; // add new key-value pair
  print(names); // {Kim Dokja: 1, Hamin Lee: 2, Cale Henituse: 3, Gilyoung: 4}

  names['Han Sooyoung'] = 5; // add another key-value pair
  print(names); // {Kim Dokja: 1, Hamin Lee: 2, Cale Henituse: 3, Gilyoung: 4, Han Sooyoung: 5}

  print(names.containsKey('Kim Dokja')); // true
  print(names.containsValue(2)); // true

  names.remove('Hamin Lee'); // remove Hamin Lee
  print(names); // {Kim Dokja: 1, Cale Henituse: 3, Gilyoung: 4, Han Sooyoung: 5}

  var a = Map<String, int>();
  a['a'] = 1;
  a['b'] = 2;

  // atau bisa langsung inisialisasi
  var mapLangsung = {'a': 1, 'b': 2, 'c': 3};
  print(mapLangsung); // {a: 1, b: 2, c: 3}

  

}

