import 'dart:ffi';

void hi(String name, String Function (String) filter){
  print('Hi ${filter(name)}');
}
void main(){

  var upperFunction = (String name){
  return name.toUpperCase();
};


var lowerFunction = (String name) => name.toLowerCase();

  print(upperFunction('cal'));
  print(lowerFunction('CAL'));

  hi('Dokja', (name){
    return name.toUpperCase();
  });

  hi('Jeha', (name)=> name.toLowerCase());
}