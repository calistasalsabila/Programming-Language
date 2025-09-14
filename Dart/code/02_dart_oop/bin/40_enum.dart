enum Level{
  easy, medium, hard
}

class Mode{

  String mode;
  Level level;

  Mode(this.mode, this.level);

}

void main(){

  Mode apaYa = Mode("Classic", Level.hard);

  print(apaYa.level);
  print(apaYa.mode);

  print(Level.values);
}