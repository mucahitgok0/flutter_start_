import 'dart:io';
import 'package:flutter_dersleri/nesne_tabanli_programlama/odev2/vocabulary.dart';

void main(){
  print("Kelimeyi giriniz: ");
  late String? kelime =stdin.readLineSync();
  var result = Find();
  result.e(kelime!);
}