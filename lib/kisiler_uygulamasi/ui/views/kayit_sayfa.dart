import 'package:flutter/material.dart';

class KayitSayfa extends StatefulWidget {
  const KayitSayfa({Key? key}) : super(key: key);

  @override
  State<KayitSayfa> createState() => _KayitSayfaState();
}

class _KayitSayfaState extends State<KayitSayfa> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();
  Future<void> kaydet(String kisi_ad, String kisi_tel) async{
      print("Kişi Adı: ${kisi_ad}- Kişi Tel: ${kisi_tel}");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kayıt Sayfa"),),
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
              kaydet(tfKisiAdi.text, tfKisiTel.text);
            },
                child: Text("KAYDET")),
          ],
        ),
      ),
    );
  }
}
