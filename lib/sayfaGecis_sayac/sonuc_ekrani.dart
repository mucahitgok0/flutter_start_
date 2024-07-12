import 'package:flutter/material.dart';
import 'package:flutter_dersleri/sayfaGecis_sayac/oyun_ekrani.dart';
import 'package:flutter_dersleri/sayfaGecis_sayac/sayac.dart';

class SonucEkrani extends StatefulWidget {
  const SonucEkrani({Key? key}) : super(key: key);

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sonuç Ekranı"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SonucEkrani()));
            },
                child: Text("GERİ DÖN")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
                child: Text("ANASAYFAYA GERİ DÖN")),
          ],
        ),
      ),
    );
  }
}
