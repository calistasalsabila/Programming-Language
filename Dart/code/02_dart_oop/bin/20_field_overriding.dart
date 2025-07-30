class Animal{
  String name = "Kuceng";

  void sayMeow(String speak){
    print("$speak");
  }
}


class dino extends Animal{
  // Field overriding
  String name = "Dino";
} 

void main(){

  var apatosaurus = dino();
  print(apatosaurus.name);
}