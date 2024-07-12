import 'package:flutter/cupertino.dart';

class SayfaUc extends StatefulWidget {
  const SayfaUc({Key? key}) : super(key: key);

  @override
  State<SayfaUc> createState() => _SayfaUcState();
}

class _SayfaUcState extends State<SayfaUc> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Sayfa Üç",
        style: TextStyle(fontSize: 30),),
    );
  }
}
