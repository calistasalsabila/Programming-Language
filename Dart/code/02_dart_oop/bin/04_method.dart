class Cat{

  String? name;
  int? age;

  void speak(){
    print("Meow");
  }
}

void main(){
  Cat cat1 = Cat();
  cat1.name = "Oyen";
  cat1.speak();
}