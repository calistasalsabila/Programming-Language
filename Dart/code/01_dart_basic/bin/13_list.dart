void main() {
  // create list of int
  List<int> listInt = [];

  // create list of String
  var listString = <String>[];

  print(listInt); // []
  print(listString); // []

  var names = <String>['Kim Dokja', 'Hamin Lee', 'Cale Henituse'];
  print(names); // [Kim Dokja, Hamin Lee, Cale Henituse]
  print(listString.length); // 2

  names.add("Gilyoung");
  print(names); // [Kim Dokja, Hamin Lee, Cale Henituse, Gilyoung]

  names.addAll(['Han Sooyoung', 'Yoo Sangah']);
  print(
    names,
  ); // [Kim Dokja, Hamin Lee, Cale Henituse, Gilyoung, Han Sooyoung, Yoo Sangah]

  print(names[0]); // Kim Dokja
  names.removeAt(1); // remove Hamin Lee

  print(
    names,
  ); // [Kim Dokja, Cale Henituse, Gilyoung, Han Sooyoung, Yoo Sangah]

  names[1] = 'Cyan Vert'; // replace Cale Henituse with Cyan Vert
  print(names); // [Kim Dokja, Cyan Vert, Gilyoung, Han Sooyoung, Yoo Sangah]

  // deklarasi list secara langsung
  var numbers = [1, 2, 3, 4, 5];
  print(numbers); // [1, 2, 3, 4, 5]

  var mixedList = <dynamic> [1, 'two', 3.0, true]; // dynaic bisa di ganti jadi String, int, dst
  print(mixedList); // [1, two, 3.0, true]


}
