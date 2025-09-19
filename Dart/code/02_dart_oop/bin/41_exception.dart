class Validation{

  static void validate(String username, String password){

    if(username==' '){
      throw ValidationException("Username is blank");

    }else if(password == ' '){
      throw ValidationException("Password is blank");
    }
    // valid
  }

}

class ValidationException implements Exception{
  String message;

  ValidationException(this.message);

}


void main(){

  try{
    Validation.validate(' ', ' ');
  }on ValidationException {
    print("Validation Error");
  }

  print('selesai');
}