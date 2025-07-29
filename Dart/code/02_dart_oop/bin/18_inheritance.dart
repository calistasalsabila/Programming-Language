class Mc{

  String? name;

  void hi(String name){
    print("hi $name my name is ${this.name}");
  }
}

class ORV extends Mc{

}

void main(){
  
  var ORV1 = Mc();
  ORV1.name = "Dokja";
  ORV1.hi("Jeha"); 

  var Hades = ORV();
  Hades.name = "underworld";

}