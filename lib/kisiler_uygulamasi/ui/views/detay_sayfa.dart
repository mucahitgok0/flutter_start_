import 'package:flutter/material.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/data/entity/kisiler.dart';

class DetaySayfa extends StatefulWidget {
  Kisiler kisi;
  DetaySayfa({required this.kisi});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();
  Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async{
    print("Kişi Id: ${kisi_id} - Kişi Adı: ${kisi_ad} - Kişi Tel: ${kisi_tel}");
  }
  @override
  void initState() {
    super.initState();
    var kisi = widget.kisi;
    tfKisiAdi.text = kisi.kisi_ad;
    tfKisiTel.text = kisi.kisi_tel;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detay Sayfa"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0),
              child: TextField(controller: tfKisiAdi, decoration: InputDecoration(hintText: "Kişi Adı"),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0),
              child: TextField(controller: tfKisiTel,
                decoration: InputDecoration(hintText: "Kişi Tel"),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(onPressed: (){
              guncelle(widget.kisi.kisi_id, tfKisiAdi.text, tfKisiTel.text);
            },
                child: Text("GÜNCELLE")),
          ],
        ),
      ),
    );
  }
}
