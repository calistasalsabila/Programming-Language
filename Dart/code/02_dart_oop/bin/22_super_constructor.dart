class Animal{

  String? name;
  Animal(this.name);

}

class Kucing extends Animal{

  // Kucing(String name) : super(name);
  Kucing(String name) : super(name){
    print("Hey from Meooooooow");
  }


}

void main(){

  var kaiden = Animal("Kaiden Break");
  print(kaiden.name);

  var meow = Kucing("Kartein");
  print(meow.name);
  
}