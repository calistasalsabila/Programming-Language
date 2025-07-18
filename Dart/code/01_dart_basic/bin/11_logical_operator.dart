void main() {
  var ip = 3.72;
  var presence = 15;

  var ipKeren = ip > 3.5;
  var minPresence = presence > 12;

  print(ipKeren); // true
  print(minPresence); // true

  var gudJob = ipKeren && minPresence; // both must be true
  print(gudJob); //true

  // logical or
  var gudJob2 = ipKeren || minPresence; // at least one must be true
  print(gudJob2); // true

  // logical not
  var notGudJob = !gudJob; // negates the value
  print(notGudJob); // false
}
