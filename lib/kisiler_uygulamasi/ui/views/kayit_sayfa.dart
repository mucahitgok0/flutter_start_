import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/ui/cubit/kayit_sayfa_cubit.dart';

class KayitSayfa extends StatefulWidget {
  const KayitSayfa({Key? key}) : super(key: key);

  @override
  State<KayitSayfa> createState() => _KayitSayfaState();
}

class _KayitSayfaState extends State<KayitSayfa> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();
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
              context.read<KayitSayfaCubit>().kaydet(tfKisiAdi.text, tfKisiTel.text);
            },
                child: Text("KAYDET")),
          ],
        ),
      ),
    );
  }
}
