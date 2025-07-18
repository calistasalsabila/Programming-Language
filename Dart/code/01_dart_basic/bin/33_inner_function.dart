// stack overflow karena di inner ga bisa dipanggil di outer
// void hi1() {
//   hi1();
// } 

void main() {
  // inner function
  void hi() {
    print("Hi Reader");
  }

  hi();
  // hi1(); 
}
