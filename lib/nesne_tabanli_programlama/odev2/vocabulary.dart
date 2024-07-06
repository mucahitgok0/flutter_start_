class Find{
  void e(String vocabulary){
    int number=0;
    for(int i=0; i<vocabulary.length; i++){
      if(vocabulary[i].toLowerCase()=='e'){
        number+=1;
      }
    }
    print("Kelimenin içindeki e harfi ${number}");
  }
}