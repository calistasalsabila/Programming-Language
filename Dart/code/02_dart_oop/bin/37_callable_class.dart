class Anime {
  String call(String name) {
    return "Bungou Stray Dogs the character is $name";
  }
}

class Sum {
  int a, b;

  Sum(this.a, this.b);

  int call(int a, int b) => a + b;
}

void main() {
  var bsd = Anime();
  print(bsd("dazai"));

  var sum1 = Sum(12, 5);
  print(sum1(12, 5));

  // bukan gini karena ini "call"
  // sum1.call(12, 5);
}
