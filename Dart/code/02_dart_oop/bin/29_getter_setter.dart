class Novel{

  // ga best practice
  String _author = "Jk Rowling";
  String _country = "England";

  String get author => _author;

  set author(String value) => _author = value;

  // kalau misal mau pakai get set, best practice nya -> harus ada logic atau method nya
  // best practice
  String get country => _country;

  set country(String nameCountry){
    if (nameCountry != "England");
    _country = nameCountry;
    
  }





}

void main(){

  Novel HarryPotter = Novel();
  print(HarryPotter._author);
  print(HarryPotter._country);


}

// better explanation / concepts open notes folder -> get set