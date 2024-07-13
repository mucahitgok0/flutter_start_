import 'package:flutter/material.dart';
import 'package:flutter_dersleri/bottom_nav_kullanimi/bottom_nav_sayfa.dart';
import 'package:flutter_dersleri/flutter_dersleri/pizza_anasayfa.dart';
import 'package:flutter_dersleri/sayfaGecis_sayac/sayac.dart';
import 'package:flutter_dersleri/kullanici_etkilesimi/kullanici_etkilesimi_sayfa.dart';
import 'package:flutter_dersleri/widget_kullanimi/anasayfa.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/ui/views/anasayfa.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //emülatorün sağında bulunan debug yazısının kaybolmasını sağlıyor
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Anasyfa(),
    );
  }
}
