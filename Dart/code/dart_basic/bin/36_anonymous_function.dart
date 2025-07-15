void main(){

  var upperFunction = (String name){
  return name.toUpperCase();
};


var lowerFunction = (String name) => name.toLowerCase();


  print(upperFunction('cal'));
  print(lowerFunction('CAL'));
}