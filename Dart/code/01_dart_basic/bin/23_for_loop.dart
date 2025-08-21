void main() {

    // for loop
    for (int i = 0; i < 10; i++) {
      print('Perulangan ke-$i');
    }

  // for in loop
  List<String> names = ['Dokja', 'Cale', 'Jiwoo'];
  for (String name in names) {
    print(name);
  }

  // for each
  for (var name in names) {
    print(name);
  }

  // atau bisa gini
  for (var name in names) {
    print('Halo, $name!');
  }

  //inf loop
  for (;;) {
    print('Infinite Loop');
  }

}
