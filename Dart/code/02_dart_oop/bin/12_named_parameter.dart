class Animal{
  String? name;
  String? voice;

  Animal(this.name, this.voice);

  // named constructor
  Animal.nameOnly(this.name){
    print("From named constructor, $name");
  }
}

void main(){

  Animal cat = Animal("Dazai", "meow");
  print(cat.name); // Dazai 
  print(cat.voice); //meow


  var cat1 = Animal.nameOnly("Deon");
  print(cat1.name);

}

// Dazai
// meow
// From named constructor, Deon
// Deon