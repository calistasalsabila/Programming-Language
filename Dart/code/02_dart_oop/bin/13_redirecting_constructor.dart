class Mc{

  String name;
  String title;

  Mc(this.name, this.title );

  Mc.withDefaultTitle(String name) : this(name, "Main Character");

  Mc.withDefaultName() : this.withDefaultTitle("Kirigaya Kazuto");

}

void main(){

  Mc ORV = Mc("Dokja", "Demon King of Salvation");
  print(ORV.name);

  var BSD = Mc.withDefaultTitle("Atsushi");
  print(BSD.name);
  print(BSD.title);

  var SaO = Mc.withDefaultName();
  print(SaO.name);

}

// Dokja
// Atsushi
// Main Character
// Kirigaya Kazuto