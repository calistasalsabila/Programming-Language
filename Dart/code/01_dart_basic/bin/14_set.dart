void main(){
  // Set adalah koleksi yang tidak mengizinkan duplikasi elemen
  // Set adalah koleksi yang tidak terurut, artinya urutan elemen ga pasti, jdi tidak ada indeks seperti pada List


  // create set of int
  Set<int> setInt = {};

  // create set of String
  var setString = <String>{};
  print(setString.length); // 0


  print(setInt); // {}
  print(setString); // {}

  var names = <String>{'Kim Dokja', 'Hamin Lee', 'Cale Henituse'};
  print(names); // {Kim Dokja, Hamin Lee, Cale Henituse}

  names.add("Gilyoung");
  print(names); // {Kim Dokja, Hamin Lee, Cale Henituse, Gilyoung}

  names.addAll({'Han Sooyoung', 'Yoo Sangah'});
  print(names); // {Kim Dokja, Hamin Lee, Cale Henituse, Gilyoung, Han Sooyoung, Yoo Sangah}

  print(names.contains('Kim Dokja')); // true
  names.remove('Hamin Lee'); // remove Hamin Lee

  print(names); // {Kim Dokja, Cale Henituse, Gilyoung, Han Sooyoung, Yoo Sangah}

  names.remove('Cale Henituse'); // remove Cale Henituse
  print(names); // {Kim Dokja, Gilyoung, Han Sooyoung, Yoo Sangah}

  // deklarasi set secara langsung
  var numbers = {1, 2, 3, 4, 5};
  print(numbers); // {1, 2, 3, 4, 5}
}