void main() {
  var counter = 1;

  while (true) {
    print("$counter");
    counter++;

    if (counter == 2) {
      break;
    }
  }

  for (var i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      continue;
    }
    print("$i adalah ganjil");
  }
}

// 1
// 1 adalah ganjil
// 3 adalah ganjil
// 5 adalah ganjil
// 7 adalah ganjil
// 9 adalah ganjil