import 'package:flutter/material.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/ui/views/detay_sayfa.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/ui/views/kayit_sayfa.dart';

import 'detay_sayfa.dart';

class Anasyfa extends StatefulWidget {
  const Anasyfa({Key? key}) : super(key: key);

  @override
  State<Anasyfa> createState() => _AnasyfaState();
}

class _AnasyfaState extends State<Anasyfa> {
  bool aramaYapiliyorMu = false;

  Future <void> ara (String aramaKelimesi) async{
    print("Arama Kelimesi: ${aramaKelimesi}");
  }

  Future<List<Kisiler>>kisileriYukle() async{
    var kisilerListesi = <Kisiler>[];
    var k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "1111");
    var k2 = Kisiler(kisi_id: 2, kisi_ad: "Zeynep", kisi_tel: "2222");
    var k3 = Kisiler(kisi_id: 3, kisi_ad: "Beyza", kisi_tel: "3333");
    kisilerListesi.add(k1);
    kisilerListesi.add(k2);
    kisilerListesi.add(k3);
    return kisilerListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyorMu ?
        TextField(decoration: InputDecoration(hintText: "Ara"),
        onChanged: (aramaSonucu){
          ara(aramaSonucu);
        },
        ) :
        Text("Anasayfa"),
        actions: [
          aramaYapiliyorMu ?
          IconButton(onPressed: (){
            setState(() {
              aramaYapiliyorMu = false;
            });
          }, icon: Icon(Icons.clear)) :
              IconButton(onPressed: (){
                setState(() {
                  aramaYapiliyorMu = true;
                });
              }, icon: Icon(Icons.search))
        ],

      ),


      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => KayitSayfa()))
          .then((value){
            print("Anasayfaya dönüldü");
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
