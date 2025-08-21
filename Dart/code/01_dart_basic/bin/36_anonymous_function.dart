
void hi(String name, String Function (String) filter){
  print('Hi ${filter(name)}');
}
void main(){
  upperFunction(String name){
  return name.toUpperCase();
}


lowerFunction(String name) => name.toLowerCase();

  print(upperFunction('cal'));
  print(lowerFunction('CAL'));

  hi('Dokja', (name){
    return name.toUpperCase();
  });

  hi('Jeha', (name)=> name.toLowerCase());
}