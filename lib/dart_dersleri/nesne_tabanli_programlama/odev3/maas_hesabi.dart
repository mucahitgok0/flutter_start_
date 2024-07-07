class Maas{
  int maashesapla(int calisma_saati){
    int ucret=0, normal_calisma_saati,
        mesai_calisma_saati, calisma_saati_ucreti = 40, mesai_saati_ucreti = 80;
    if(calisma_saati<=150 && calisma_saati>0){
      ucret = calisma_saati_ucreti*calisma_saati;
    }
    else if(calisma_saati>150){
      normal_calisma_saati = 150;
      mesai_calisma_saati = calisma_saati-150;
      ucret = (normal_calisma_saati*calisma_saati_ucreti)+(mesai_calisma_saati*mesai_saati_ucreti);
    }
    else{
      print("Geçersiz değer");
    }
    return ucret;
  }
}