class Mc{

  String getMc(){
    return "Dokja";
  }
}

class ORV extends Mc{

  String getMc(){
    return "Jeha";
  }
  
  String getParentMc(){
    return super.getMc();
  }
}

void main(){

  var mainCharacter = ORV();
  print(mainCharacter.getMc());
  print(mainCharacter.getParentMc());

}

// Jeha
// Dokja
