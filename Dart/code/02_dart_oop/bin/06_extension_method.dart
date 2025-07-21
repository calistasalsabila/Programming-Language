class Car{

  void vroom() => print("Vroom vroom");

}

extension color on Car{
  void changeColor(){
    print("Color changed");
  }
}

void main(){
  var lykan = Car();
  lykan.vroom();
}