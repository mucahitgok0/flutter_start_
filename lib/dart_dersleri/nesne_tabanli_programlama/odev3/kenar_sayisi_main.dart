import 'dart:io';

import 'kenar_sayisi.dart';

void main(){
  print("kenar sayısını girin");
  String? kenar_sayisi = stdin.readLineSync();
  int kenar_sayisii = int.parse(kenar_sayisi!);
  var result = Aci();
  double gelen_deger = result.icAci(kenar_sayisii);
  print(gelen_deger);
}