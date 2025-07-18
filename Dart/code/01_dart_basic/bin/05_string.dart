void main() {
  // String b aj
  String anime = "Charlotte";
  String mc = "Yuu Otosaka";

  print(anime);
  print(mc);

  // String interpolation

  var full = "$anime $mc";
  print(full);

  print("Anime: $anime");
  print("MC: $mc");

  // String concatenation
  String full1 = anime + " " + mc;
  print(full1);

  // String yg pakai tab space sama enter
  var reader = "Dokja";
  var protagonis = "Jeha";

  var orv = reader + protagonis;
  print(orv);

  var orv2 =
      'Dokja Kim'
      'and'
      'Junghyuk Yoo';

  print(orv2);

  // Multiline string
  var multiline = '''
  Halo
  ini adalah
  multiline string
  ''';

  // backslash (\) dipakai kalo mau karakter setelahnya di anggap benar
  var text = "Halo im \'Otosaka Shunsuke\'";
  print(text);
}
