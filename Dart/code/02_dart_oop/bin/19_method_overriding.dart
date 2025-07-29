class Mc{

  String? name;

  void hi(String name){
    print("hi $name my name is ${this.name}");
  }
}

class ORV extends Mc{

  void hi(String name){
    print("hi $name my name is ${this.name} from ORV");
  }

}

void main(){
  
  var ORV1 = Mc();
  ORV1.name = "Dokja";
  ORV1.hi("Jeha"); 

  var underworld = ORV();
  underworld.name = "Hades";
  underworld.hi("Persephone");

}