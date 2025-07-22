class Animal{
  String? name;
  String? voice;

  Animal(String paramName, String? paramVoice){ // kalau mau opsional tinggal String?
    name = paramName;
    voice = paramVoice;
  }
}

void main(){

  Animal cat = Animal("Dazai", null);
  print(cat.name);
}