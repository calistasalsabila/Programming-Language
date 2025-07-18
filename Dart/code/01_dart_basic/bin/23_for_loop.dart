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
  names.forEach((name) => print(name));

  // atau bisa gini
  names.forEach((name) {
    print('Halo, $name!');
  });

  //inf loop
  for (;;) {
    print('Infinite Loop');
  }

}
