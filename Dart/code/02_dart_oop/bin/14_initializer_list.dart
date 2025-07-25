class Customer{

  String firstName = ' ';
  String lastName = ' ';
  String fullName = ' ';

  Customer(this.fullName, /* String firstName */)
    // initializer
    : firstName = fullName.split(" ")[0],
    lastName = fullName.split(" ")[1]
    { 
      // baru ngambil yang dri parameter
      // firstName = fullName.split(" ")[0];
      print("New customer created");
    }

}


void main(){

  var newCustomer = Customer("Dokja Kim");
  print(newCustomer.firstName);
  print(newCustomer.lastName);
  print(newCustomer.fullName);

}

// New customer created
// Dokja
// Kim
// Dokja Kim