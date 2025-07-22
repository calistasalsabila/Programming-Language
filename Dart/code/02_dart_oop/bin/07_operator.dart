class Apple{
  int quantity = 0;

  Apple operator + (Apple apple){
    var result = Apple();
    result.quantity = quantity + apple.quantity;
    return result;
  }
}

void main(){

  // Apple nya bisa di ganti var
  Apple apple1 = Apple();
  apple1.quantity = 100;

  Apple apple2 = Apple();
  apple2.quantity = 50;

  Apple apple3 = apple1 + apple2;
  print(apple3.quantity);
}