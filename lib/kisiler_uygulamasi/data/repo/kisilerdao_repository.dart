import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/data/entity/kisiler.dart';

class KisilerDaoRepository{

  var collectionKisiler = FirebaseFirestore.instance.collection("Kisiler");

  Future<void> kaydet(String kisi_ad, String kisi_tel) async{
    var yeniKisi = HashMap<String, dynamic>();
    yeniKisi["kisi_id"] = "";
    yeniKisi["kisi_ad"] = kisi_ad;
    yeniKisi["kisi_tel"] = kisi_tel;
    collectionKisiler.add(yeniKisi);
  }

  Future<void> guncelle(String kisi_id, String kisi_ad, String kisi_tel) async{
    print("Kişi Id: ${kisi_id} - Kişi Adı: ${kisi_ad} - Kişi Tel: ${kisi_tel}");
  }

  Future <void> sil (String kisi_id) async{
    print("Kişi Sil: ${kisi_id}");
  }

  Future<List<Kisiler>>kisileriYukle() async{
    var kisilerListesi = <Kisiler>[];
    var k1 = Kisiler(kisi_id: "1", kisi_ad: "Ahmet", kisi_tel: "1111");
    var k2 = Kisiler(kisi_id: "2", kisi_ad: "Zeynep", kisi_tel: "2222");
    var k3 = Kisiler(kisi_id: "3", kisi_ad: "Beyza", kisi_tel: "3333");
    kisilerListesi.add(k1);
    kisilerListesi.add(k2);
    kisilerListesi.add(k3);
    return kisilerListesi;
  }

  Future<List<Kisiler>> ara(String aramaKelimesi) async{
  var kisilerListesi = <Kisiler>[];
  var k1 = Kisiler(kisi_id: "1", kisi_ad: "Ahmet", kisi_tel: "1111");
  kisilerListesi.add(k1);
  return kisilerListesi;
  }

}