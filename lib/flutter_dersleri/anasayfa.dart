import 'package:flutter/material.dart';
import 'package:flutter_dersleri/flutter_dersleri/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pizza", style: TextStyle(fontSize: 22),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16),
            child: Text("Beef Cheese", style: TextStyle(fontSize: 36,color: anaRenk,
                fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset("resimler/pizza_resimm.jpg",width: 200, height: 200),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){},
                  child: Text("Cheese",style: TextStyle(color: yaziRenk1),),
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                ),
                TextButton(onPressed: (){},
                  child: Text("Sausage",style: TextStyle(color: yaziRenk1),),
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                ),
                TextButton(onPressed: (){},
                  child: Text("Olive",style: TextStyle(color: yaziRenk1),),
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                ),
                TextButton(onPressed: (){},
                  child: Text("Pepper",style: TextStyle(color: yaziRenk1),),
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                ),
                ],
            ),
          ),
        ],
      ),
    );
  }
}
