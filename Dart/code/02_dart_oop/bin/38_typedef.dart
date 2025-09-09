class Sum {
  int a, b;

  Sum(this.a, this.b);

  int call()=> a + b;
}

// typedef itu sama kayak alias , bisa class , bisa function
// class
  typedef Total = Sum;
  typedef Jumlah =  Sum;

// function (tidak di sarankan tapi ya)
typedef Filter = String Function (String);

void hi(String name, Filter filter){
  print("hi ${filter(name)}");
}

void main() {

  var sum1 = Sum(12, 5);
  print(sum1());

  var jumlah = Jumlah(5,6);
  var total = Total(5,7);

  print(jumlah());
  print(total());


  hi("Dokja", (value) => value.toUpperCase());

}
