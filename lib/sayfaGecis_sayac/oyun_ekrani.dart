import 'package:flutter/material.dart';
import 'package:flutter_dersleri/sayfaGecis_sayac/kisiler.dart';
import 'package:flutter_dersleri/sayfaGecis_sayac/sonuc_ekrani.dart';

class OyunEkrani extends StatefulWidget {
  Kisiler kisi;
  OyunEkrani(this.kisi);

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Oyun Ekranı"),
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      },
          icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${widget.kisi.ad} - ${widget.kisi.yas} - ${widget.kisi.boy} - ${widget.kisi.evli_mi}"),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SonucEkrani()));
                },
                    child: Text("BİTTİ")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
