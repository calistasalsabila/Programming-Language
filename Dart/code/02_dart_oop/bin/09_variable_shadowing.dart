class Animal{
  String? name;
  String? voice;

  Animal(String name, String? voice){ // kalau mau opsional tinggal String?
    name = name;
    voice = voice;
  }
}

void main(){

  Animal cat = Animal("Dazai", "meow");
  print(cat.name); //null
}