class Mc {
  String number;
  String name;

  Mc(this.number, this.name);

  bool operator ==(Object other) {
    if (other is Mc) {
      if (number != other.number) {
        return false;
      } else if (name != other.name){
        return false;
      }else{
      return true;
      }
    } else {
      return false;
    }
  }
}

void main() {
  var mc = Mc("1", "Dokja");
  var mc1 = Mc("1", "Dokja");

  // bool operator agar jika isi dari object nya sama maka hasilnya true
  print(mc == mc1);
}
