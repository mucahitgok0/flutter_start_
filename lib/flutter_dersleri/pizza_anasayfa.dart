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
            padding: const EdgeInsets.only(top: 8),
            child: Image.asset("resimler/pizza_resimm.jpg",width: 200, height: 200),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik: "Cheese"),
                Chip(icerik: "Sausage"),
                Chip(icerik: "Olive"),
                Chip(icerik: "Pepper"),
                ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("20 min", style: TextStyle(fontSize: 19,color: yaziRenk2,
                    fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text("Delivery", style: TextStyle(fontSize: 19,color: anaRenk,
                      fontWeight: FontWeight.bold)),
                ),
                Text("Meat lover, get ready to meet your pizza!",
                    style: TextStyle(fontSize: 19,color: yaziRenk2,
                    )
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("\$5.98",style: TextStyle(fontSize:19, color: anaRenk,
                    fontWeight: FontWeight.bold)),
                SizedBox(width: 200, height: 40,
                  child: TextButton(onPressed: (){},
                      child: Text("ADD TO CART",
                          style: TextStyle(fontSize: 19,color: yaziRenk1),),
                          style: TextButton.styleFrom(backgroundColor: anaRenk,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text("Cheese",style: TextStyle(color: yaziRenk1),),
      style: TextButton.styleFrom(backgroundColor: anaRenk,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
      ),
    );
  }
}

