import 'package:flutter/material.dart';
import 'package:flutter_dersleri/flutter_dersleri/pizza_anasayfa.dart';
import 'package:flutter_dersleri/sayac.dart';

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
      home: const Sayac(),
    );
  }
}
