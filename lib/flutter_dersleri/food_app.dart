import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dersleri/flutter_dersleri/renkler.dart';

class AppDesign extends StatefulWidget {
  const AppDesign({Key? key}) : super(key: key);

  @override
  State<AppDesign> createState() => _AppDesignState();
}

class _AppDesignState extends State<AppDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 125.0),
              child: Image.asset("resimler/pizza_resimm.jpg",width: 250, height: 250),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Find your food store",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Order directly Our application\n can sends you everywhere",
                style: TextStyle(color: yaziRenk2),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: SizedBox( width: 120, height: 40,
                child: TextButton(onPressed: (){},
                  child: Text("Skip",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: TextButton.styleFrom(backgroundColor: yaziRenk2,),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
