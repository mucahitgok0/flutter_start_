import 'package:flutter/material.dart';
import 'package:flutter_dersleri/bottom_nav_kullanimi/sayfa_bir.dart';
import 'package:flutter_dersleri/bottom_nav_kullanimi/sayfa_iki.dart';
import 'package:flutter_dersleri/bottom_nav_kullanimi/sayfa_uc.dart';

class BottomNavAnaSayfa extends StatefulWidget {
  const BottomNavAnaSayfa({Key? key}) : super(key: key);

  @override
  State<BottomNavAnaSayfa> createState() => _BottomNavAnaSayfaState();
}

class _BottomNavAnaSayfaState extends State<BottomNavAnaSayfa> {
  int secilenIndex = 0;
  var sayfalar = [const SayfaBir(), const SayfaIki(), const SayfaUc()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Anasayfa"),),
      body: sayfalar[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.looks_one),label: "Bir"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two),label: "İki"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3),label: "Üç"),
        ],
        currentIndex: secilenIndex,
        onTap: (indeks){
          setState(() {
            secilenIndex = indeks;
          });
        },
      ),
    );
  }
}
