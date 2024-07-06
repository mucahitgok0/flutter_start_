import 'package:flutter_dersleri/nesne_tabanli_programlama/composition/filmler.dart';
import 'package:flutter_dersleri/nesne_tabanli_programlama/composition/yonetmenler.dart';

import 'kategoriler.dart';

void main(){
  var k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram");
  var k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi");

  var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Nuri Bilge Ceylan");
  var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Quentin Tarantino");
  var y3 = Yonetmenler(yonetmen_id: 3, yonetmen_ad: "Nolan");
  
  var f1 = Filmler(film_id: 1, film_Ad: "Django",
      film_yil: 2013, kategori: k1, yonetmen: y2);
  var f2 = Filmler(film_id: 2, film_Ad: "Inception",
      film_yil: 2006, kategori: k2, yonetmen: y3);
  
  print("Film id      :${f1.film_id}");
  print("Film ad:     :${f1.film_Ad}");
  print("Film yıl:    :${f1.film_yil}");
  print("Film kategori:${f1.kategori.kategori_ad}");
  print("Film yonetmen:${f1.yonetmen.yonetmen_ad}");
}