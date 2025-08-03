class Novel{

  String title;
  Novel(this.title);
  
}

class ORV extends Novel{

  ORV(String title) : super(title);

}

class dokjaCompany extends ORV{

  dokjaCompany(String title) : super(title);

}

void titleNovel(Novel novel){
  print("${novel.title}");
  
}

void main(){

  // Novel novel = Novel("dokja");
  // print(novel);

  // novel = ORV("dokja");
  // print(novel);

  // novel = dokjaCompany("dokja");
  // print(novel);

  titleNovel(Novel("ORV"));
  // polymorphism
  titleNovel(ORV("ORV"));
  titleNovel(dokjaCompany("ORV"));


}

// Instance of 'Novel'
// Instance of 'ORV'
// Instance of 'dokjaCompany'


// ORV
// ORV
// ORV