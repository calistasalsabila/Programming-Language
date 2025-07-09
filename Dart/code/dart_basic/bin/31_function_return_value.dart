int sum(List<int> numbers) {
  var total = 0;
  for (var value in numbers) {
    total += value;
  }
  return total;
}

void main() {
  print(sum([10, 5, 7, 9]));

  var total = sum([2, 6, 9, 10]);
  print(total);
}
