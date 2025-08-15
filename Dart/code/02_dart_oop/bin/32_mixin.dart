mixin swim {
  void swimm() {
    print("I can swim");
  }
}

mixin walk {
  void walkk() {
    print("I can walk");
  }
}

class Duck with swim, walk {}

// Membatasi mixin pakai on
mixin fly on Duck {
  void flyy() {
    print("I can fly");
  }
}

// pakai extend and with ; extend -> kelas(semuanya)
class duck2 extends Duck with fly {}

void main() {
  var d = Duck();
  print(d);
  d.swimm();
  d.walkk();

  // kalau mau langsung override
  //   class Duck with swim, walk {
  //   @override
  //   String toString() {
  //     return "I am a Duck: I can swim and walk!";
  //   }
  // }

  // void main() {
  //   var d = Duck();
  //   print(d);
  // }

  duck2 a = duck2();
  print(a);
  a.swimm();
  a.walkk();
  a.flyy();
}

// Instance of 'Duck'
// I can swim
// I can walk
// Instance of 'duck2'
// I can swim
// I can walk
