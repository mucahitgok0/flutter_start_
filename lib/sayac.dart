import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayac extends StatefulWidget {
  const Sayac({Key? key}) : super(key: key);

  @override
  State<Sayac> createState() => _SayacState();
}

class _SayacState extends State<Sayac> {
  int sonuc = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Anasayfa"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç: ${sonuc}"),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (
                    ){
                  setState(() {
                    sonuc +=1;
                  });
                },
                    child: Text("Arttır")),
                ElevatedButton(onPressed: (
                    ){
                  setState(() {
                    sonuc = 0;
                  });
                },
                    child: Text("Sıfırla"))
              ],

            ),
          ],
        ),
      ),
    );
  }
}
