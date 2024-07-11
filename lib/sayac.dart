import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dersleri/kisiler.dart';
import 'package:flutter_dersleri/oyun_ekrani.dart';

class Sayac extends StatefulWidget {
  const Sayac({Key? key}) : super(key: key);
  @override
  State<Sayac> createState() => _SayacState();
}

class _SayacState extends State<Sayac> {
  int sonuc = 0;
  bool durum = false;

  Future<int> toplama(int sayi1, int sayi2) async{
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Anasayfa"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç: ${sonuc}"),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (
                    ){
                  setState(() {
                    sonuc +=1;
                  });
                },
                    child: Text("Arttır")),
                ElevatedButton(onPressed: (
                    ){
                  setState(() {
                    sonuc = 0;
                  });
                },
                    child: Text("Sıfırla"))
              ],
            ),
            ElevatedButton(onPressed:(){
              var kisi = Kisiler(ad: "Mücahit", yas: 20, boy: 185, evli_mi: false,);
              Navigator.push(context, MaterialPageRoute(builder: (context) => OyunEkrani(kisi)))
              .then((value) => {//sayfaya geri dönüldüğünü anlamak ve ekranda değer göstermek
                //için kullanılır
                print("Anasayfaya dönüldü"),
              });
            },
                child: Text("BAŞLA")),
            Visibility(visible: durum,child: Text("Merhaba")),
            ((){
              if(durum){
                return Text("Merhaba");
              }
              else{
                return Text("Güle güle");
              }
            }()),
            Text(durum ? "Doğru" : "Yanlış",
            style: TextStyle(color: durum ? Colors.blue : Colors.red),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (
                    ){
                  setState(() {
                    durum = true;
                  });
                },
                    child: Text("Durum1 (true)")),
                ElevatedButton(onPressed: (
                    ){
                  setState(() {
                    durum = false;
                  });
                },
                    child: Text("Durum2 (false)"))
              ],
            ),
            FutureBuilder<int>(
                future: toplama(10,20),
                builder: (context,snapshot){
                  if(snapshot.hasError){
                    return const Text("Hata Oluştu");
                  }
                  if(snapshot.hasData){
                    return Text("Sonuç: ${snapshot.data}");
                  }
                  else{
                    return Text("Sonuç yok");
                  }
                }
            ),
          ],
        ),
      ),
    );
  }
}
