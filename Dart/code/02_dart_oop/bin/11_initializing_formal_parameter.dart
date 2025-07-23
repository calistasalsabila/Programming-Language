class Animal{
  String? name;
  String? voice;

  Animal(this.name, this.voice);
}

void main(){

  Animal cat = Animal("Dazai", "meow");
  print(cat.name); // Dazai 
  print(cat.voice); //meow
}