import 'package:flutter_dersleri/dart_dersleri/nesne_tabanli_programlama/composition/yonetmenler.dart';
import 'kategoriler.dart';

class Filmler{
  late int film_id;
  late String film_Ad;
  late int film_yil;
  Kategoriler kategori;
  Yonetmenler yonetmen;

  Filmler(
      {required this.film_id,
       required this.film_Ad,
       required this.film_yil,
       required this.kategori,
       required this.yonetmen});
}