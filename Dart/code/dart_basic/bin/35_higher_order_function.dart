// HOF menerima fungsi filter
void hi(String name, String Function(String) filter) {
  var filteredName = filter(name);  
  print("hi $filteredName");
}


String filterBadWord(String name) {
  if (name == 'jelek') {
    return '****';
  } else {
    return name;
  }
}

// Di main, kirim fungsi filter ke HOF
void main() {
  hi("calista", filterBadWord);  
}
