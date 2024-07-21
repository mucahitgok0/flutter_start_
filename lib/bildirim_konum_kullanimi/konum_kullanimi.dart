import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Konum extends StatefulWidget {
  const Konum({Key? key}) : super(key: key);

  @override
  State<Konum> createState() => _KonumState();
}

class _KonumState extends State<Konum> {
  var enlem = 0.0;
  var boylam = 0.0;

  Future<void> konumBilgisiAl() async{
    var konum = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      enlem = konum.latitude;
      boylam = konum.longitude;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Konum Kullanımı"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Enlem: $enlem",style: TextStyle(fontSize: 30),),
            Text("Boylam: $boylam",style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: (){
                konumBilgisiAl();
            }, child: const Text("Konum Bul")),
          ],
        ),
      ),
    );
  }
}
