import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    test();
  }

  Future<void> test() async{
    var sp = await SharedPreferences.getInstance();

    //veri kaydı
    sp.setString("ad","Ahmet");
    //veri silme
    sp.remove("ad");
    
    
    //veri okuma
    String gelenAd = sp.getString("ad") ?? "isim yok";
    print("gelen ad: $gelenAd");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shared Preferences"),),
      body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Açılış",style: TextStyle(fontSize: 50),),
        ],
      ),
    ),
    );
  }
}
