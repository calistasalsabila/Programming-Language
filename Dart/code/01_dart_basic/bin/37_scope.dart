void main(){
  String name = 'Matthias';

  void hi(String name){
    var hi = 'hi $name';
    print(name);
  }

  hi(name);
  print(hi);
}