import 'dart:io';
import 'maas_hesabi.dart';

void main(){
  print("İşinizde kaç gün ");
  String? girilen_deger = stdin.readLineSync();
  int calisma_saati = int.parse(girilen_deger!);
  var hesap = Maas();
  int gelen_ucret = hesap.maashesapla(calisma_saati);
  print(gelen_ucret);
}