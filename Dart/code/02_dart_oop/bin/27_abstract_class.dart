abstract class Matkul{

  String? title;

}

class matkulWajib extends Matkul{

  matkulWajib(String title){
    this.title = title;
  }
} 

void main(){

  // cuma bisa buat object dari turunan
  matkulWajib SDA = matkulWajib("Data Structure and Algorithm");
  print(SDA.title);
  
}