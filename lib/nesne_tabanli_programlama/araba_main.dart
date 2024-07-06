import 'package:flutter_dersleri/nesne_tabanli_programlama/araba.dart';

void main(){
  var tofas = Araba(renk: "beyaz", hiz: 10, calisiyorMu: false);
  tofas.renk = "kırmızı";
  tofas.hiz = 31;
  tofas.calisiyorMu = false;
  tofas.calistir();
  tofas.bilgiAl();
  tofas.durdur();
  tofas.bilgiAl();
  tofas.hizlan(100);
  tofas.bilgiAl();
  tofas.yavasla(50);
  tofas.bilgiAl();
}