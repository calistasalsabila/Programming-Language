class Validation{

  static void validate(String username, String password){

    if(username==' '){
      throw ValidationException("Username is blank");

    }else if(password == ' '){
      throw ValidationException("Password is blank");
    }else if(username != 'calista' || password != 'heheh'){
      throw Exception("Login Failed!");
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
    Validation.validate('dokja', ',');
  }on ValidationException  catch (exception) {
    print("Validation Error and Error : ${exception.message}");
  }on Exception catch (exception){
    print("${exception.toString()}");
  }finally{
    print("ok");
  }

  print('selesai');

  // atau bisa gini
  try{
    Validation.validate('dokja', ',');
  }catch (exception) {
    print("Error : ${exception.toString()}");
  }finally{
    print("ok");
  }

}