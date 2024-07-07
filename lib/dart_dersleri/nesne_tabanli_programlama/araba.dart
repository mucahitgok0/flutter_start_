class Araba{
  late String renk;
  late int hiz;
  late bool calisiyorMu;
  Araba({required this.renk,required this.hiz,required this.calisiyorMu});
  void calistir(){
    hiz = 5;
    calisiyorMu = true;
  }
  void durdur(){
    hiz = 0;
    calisiyorMu = false;
  }
  void hizlan(int hizArtisi){
    hiz += hizArtisi;
  }
  void yavasla(int hizAzalisi){
    hiz -= hizAzalisi;
  }
  void bilgiAl(){
    print("renk        : ${renk}");
    print("hız         : ${hiz}");
    print("calışıyor mu: ${calisiyorMu}");
    print("***********************");
  }
}