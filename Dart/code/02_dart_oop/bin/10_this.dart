class Animal{
  String? name;
  String? voice;

  Animal(String name, String? voice){ // kalau mau opsional tinggal String?
    this.name = name;
    this.voice = voice;
  }
}

void main(){

  Animal cat = Animal("Dazai", "meow");
  print(cat.name); // Dazai 
  print(cat.voice); //meow
}