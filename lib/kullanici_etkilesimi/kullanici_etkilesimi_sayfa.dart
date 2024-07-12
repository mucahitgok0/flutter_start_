import 'package:flutter/material.dart';

class KulllaniciEtkilesimiSayfa extends StatefulWidget {
  const KulllaniciEtkilesimiSayfa({Key? key}) : super(key: key);

  @override
  State<KulllaniciEtkilesimiSayfa> createState() => _KulllaniciEtkilesimiSayfaState();
}

class _KulllaniciEtkilesimiSayfaState extends State<KulllaniciEtkilesimiSayfa> {
  var tfControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kullanıcı Etkileşimi"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: const Text("Silmek istiyor musunuz?",
                      style: TextStyle(color: Colors.blue),),
                    backgroundColor: Colors.white,
                    action: SnackBarAction(label: "Evet",textColor: Colors.black,
                        onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: const Text("Silindi", style: TextStyle(color: Colors.blue),),
                        backgroundColor: Colors.white,)
                      );
                    }


                    ),

                ),
              );
            },
                child: Text("Snackbar")),
            ElevatedButton(onPressed: (){},
                child: Text("Snackbar(Özel)")),
            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                      return AlertDialog(
                        title: const Text("Başlık"),
                        content: TextField(controller: tfControl, decoration: InputDecoration(hintText: "Veri Gir"),),
                        actions: [
                          TextButton(onPressed: (){
                            print("Sonuç: ${tfControl.text}");
                            tfControl.text="";
                            Navigator.pop(context);
                          }, child: Text("Kaydet")),
                          TextButton(onPressed: (){
                            print("İptal seçildi");
                            Navigator.pop(context);
                          }, child: Text("İptal")),

                        ],
                      );
                  }
              );
            },
                child: Text("Alert")),
            ElevatedButton(onPressed: (){},
                child: Text("Alert(Özel)")),
          ],
        ),
      ),
    );
  }
}
