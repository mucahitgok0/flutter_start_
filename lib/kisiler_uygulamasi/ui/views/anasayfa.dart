import 'package:flutter/material.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/ui/views/detay_sayfa.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/ui/views/kayit_sayfa.dart';



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

  Future <void> sil (int kisi_id) async{
    print("Kişi Sil: ${kisi_id}");
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
      body: FutureBuilder<List<Kisiler>>(
        future: kisileriYukle(),
        builder: (context, snapshots){
          if(snapshots.hasData){
            var kisilerListesi = snapshots.data;
            return ListView.builder(
              itemCount: kisilerListesi!.length,
              itemBuilder:(context, indeks){
                var kisi = kisilerListesi[indeks];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(kisi: kisi)))
                        .then((value){
                      print("Detay sayfaya dönüldü");
                    });
                  },
                  child: Card(
                    child: SizedBox(height: 100,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(kisi.kisi_ad,style: const TextStyle(fontSize: 20),),
                                Text(kisi.kisi_tel),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(onPressed: (){
                            setState(() {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("${kisi.kisi_ad} silinsin mi?"),
                                  action: SnackBarAction(label: "Evet", 
                                      onPressed: (){
                                    sil(kisi.kisi_id);
                                      }
                                  ),
                                  ));
                            });
                          }, icon: Icon(Icons.clear),color: Colors.black54,)
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          else{
            return const Center();
          }
        },
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
