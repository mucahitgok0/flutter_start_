import 'dart:io';

void main(){
  print("Kaç saattir otoparktasınız ");
  String? girilen_deger = stdin.readLineSync();
  int saat = int.parse(girilen_deger!);
}