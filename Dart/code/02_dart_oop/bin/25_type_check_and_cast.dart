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
  if(novel is dokjaCompany){
    // sebenarnya kalo dah pake is ga perlu dokjaCompany dokjacompany = novel as dokjaCompany;
    dokjaCompany dokjacompany = novel as dokjaCompany;
    print(" dokjaCompany -> ${dokjacompany.title}");
  }else if(novel is ORV){
    ORV orv = novel as ORV;
    print("ORV -> ${orv.title}");
  }else{
  print("${novel.title}");
  }
}

void main(){


  titleNovel(Novel("ORV"));
  titleNovel(ORV("ORV"));
  titleNovel(dokjaCompany("ORV"));


}
