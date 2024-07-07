import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pizza"),),
      body: Center(//yatayda ortalama
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,//dikeyde ortalama
          children: [
            Text("Merhaba Dünya", style: TextStyle(fontSize: 50),)
          ],
        ),
      ),
    );
  }
}
