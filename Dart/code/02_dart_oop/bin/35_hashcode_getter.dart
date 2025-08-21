class Mc {
  String number;
  String name;

  Mc(this.number, this.name);

  // kalau mau cepat bisa si, klik kanan generate hashcode and equals
  bool operator ==(Object other) {
    if (other is Mc) {
      if (number != other.number) {
        return false;
      } else if (name != other.name) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }

  int get hashCode {
    var result = number.hashCode;
    result += name.hashCode;
    return result;
  }
}

void main() {
  var mc = Mc("1", "Dokja");
  var mc1 = Mc("1", "Dokja");

  // bool operator agar jika isi dari object nya sama maka hasilnya true
  print(mc == mc1);
  print(mc == mc);

  // tapi secara hashcode (bawaan dart) dia beda, jadi salah, harusnya sama -> dengan adanya method hashcode getter hasilnya akan sama 
  print(mc.hashCode);
  print(mc1.hashCode);
}

// true
// true
// 122480600
// 841637434

// after hashCode getter

// true
// true
// 852230054
// 852230054
