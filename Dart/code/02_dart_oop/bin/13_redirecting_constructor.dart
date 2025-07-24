class Mc{

  String name;
  String title;

  Mc(this.name, this.title );

  Mc.withDefaultTitle(String name) : this(name, "Main Character");

}

void main(){

  Mc ORV = Mc("Dokja", "Demon King of Salvation");
  print(ORV.name);

  var BSD = Mc.withDefaultTitle("Atsushi");
  print(BSD.name);
  print(BSD.title);

}

// Dokja
// Atsushi
// Main Character