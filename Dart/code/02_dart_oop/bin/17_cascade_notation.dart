class Mc{

  String? name;
  String? novel;
  String? title;

}

Mc? createMc(){
  return null;
}

void main(){

  var mc1 = Mc();
  mc1.name = "Dokja";
  mc1.novel = "ORV";
  mc1.title = "Oldest Dream";

  // pakai cascade notation
  var mc2 = Mc()
  ..name = "Deon"
  ..novel = "Im not that kind of talent"
  ..title = "Hero";

  Mc? m3 = createMc()
  ?..name = "Hamin"
  ..title = "student";
  
}