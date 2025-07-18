void main() {
  var nilai = 'A';
  switch (nilai) {
    // eksekusi sampe bawah kec nemu break
    case 'A':
      print("amazing");
    case 'B':
      print("ok sih");
      break;
    case 'C':
    case 'D':
      print("Jelek amat");
      break;
    default:
      print("dahlah ga usa ikut ujian");
  }
}
