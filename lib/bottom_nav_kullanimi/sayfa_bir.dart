import 'package:flutter/material.dart';

class SayfaBir extends StatefulWidget {
  const SayfaBir({Key? key}) : super(key: key);

  @override
  State<SayfaBir> createState() => _SayfaBirState();
}

class _SayfaBirState extends State<SayfaBir> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Sayfa Bir",
      style: TextStyle(fontSize: 30),),
    );
  }
}
