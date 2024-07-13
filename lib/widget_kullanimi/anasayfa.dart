import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Anasayfaa extends StatefulWidget {
  const Anasayfaa({Key? key}) : super(key: key);

  @override
  State<Anasayfaa> createState() => _AnasayfaaState();
}

class _AnasayfaaState extends State<Anasayfaa> {
  var tfControl = TextEditingController();
  String alinanVeri = "";
  String resimAdi = "mutlu.png";
  bool switchKontrol = false;
  bool checkBoxKontrol = false;
  int radioDeger = 0;
  bool progresKontrol = false;
  double ilerleme = 30.0;
  var tfSaat = TextEditingController();
  var tfTarih = TextEditingController();
  var ulkelerListesi = <String>[];
  String secilenUlke = "Türkiye";
  @override
  void initState() {
    super.initState();
    ulkelerListesi.add("Türkiye");
    ulkelerListesi.add("İtalya");
    ulkelerListesi.add("Japonya");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widgets"),),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(alinanVeri),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(controller: tfControl,
                decoration: const InputDecoration(),
                keyboardType: TextInputType.number,
                  obscureText: true,
                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  alinanVeri = tfControl.text;
                });
              },
                  child: const Text("Veriyi girin")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                        resimAdi = "mutlu.png";
                    });
                  },
                      child: const Text("Resim1"),),
                  Image.asset("resimler/$resimAdi"),

                  ElevatedButton(onPressed: (){
                    setState(() {
                      resimAdi = "uzgun.png";
                    });
                  },
                      child: const Text("Resim2")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 175,
                    child: SwitchListTile(
                      title: const Text("Dart",),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: switchKontrol,
                        onChanged: (veri){
                          setState(() {
                            switchKontrol = veri;
                          });
                        }
                    ),
                  ),
                  SizedBox( width: 175,
                    child: CheckboxListTile(
                        title: const Text("Flutter"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: checkBoxKontrol,
                        onChanged: (veri){
                          setState(() {
                            checkBoxKontrol = veri!;
                          });
                        }
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 150,
                    child: RadioListTile(
                        title: const Text("Barcelona",style: TextStyle(fontSize: 12),),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: 1,
                        groupValue: radioDeger,
                        onChanged: (veri){
                          setState(() {
                            radioDeger = veri!;
                          });
                        }
                    ),
                  ),
                  SizedBox(width: 150,
                    child: RadioListTile(
                        title: const Text("Real Madrid"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: 2,
                        groupValue: radioDeger,
                        onChanged: (veri){
                          setState(() {
                              radioDeger = veri!;
                          });
                        }
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      progresKontrol = true;
                    });
                  },
                    child: const Text("Başla"),),
                  Visibility(visible: progresKontrol, child: CircularProgressIndicator()),

                  ElevatedButton(onPressed: (){
                    setState(() {
                      progresKontrol = false;
                    });
                  },
                      child: const Text("Durdur")),
                ],
              ),
              Text(ilerleme.toInt().toString()),
              Slider(max:100.0, min:0.0, value: ilerleme, onChanged: (veri){
                setState(() {
                  ilerleme = veri;
                });
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox( width: 120,
                    child: TextField(
                      controller: tfSaat,
                      decoration: InputDecoration(hintText: "Saat"),
                    ),
                  ),
                  IconButton(onPressed: (){
                    showTimePicker(context: context, initialTime: TimeOfDay.fromDateTime(DateTime.now()))
                    .then((value) => {
                      tfSaat.text = "${value!.hour} : ${value.minute}",
                    });
                  },
                      icon: Icon(Icons.access_time)),
                  SizedBox( width: 120,
                    child: TextField(
                      controller: tfTarih,
                      decoration: InputDecoration(hintText: "Tarih"),
                    ),
                  ),
                  IconButton(onPressed: (){
                    showDatePicker(context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000), lastDate: DateTime(2030))
                    .then((value) => {
                      tfTarih.text = "${value!.day} / ${value.month} / ${value.year}"
                    });
                    },icon: Icon(Icons.date_range)),
                ],
              ),
              DropdownButton(
                  value: secilenUlke,
                  icon: const Icon(Icons.arrow_drop_down),
                  items: ulkelerListesi.map((ulke){
                    return DropdownMenuItem(value: ulke, child: Text(ulke),);
                  }).toList(),
                  onChanged: (veri){
                  setState(() {
                    secilenUlke = veri!;
                  });
                  },
              ),
              ElevatedButton(onPressed: (){
                print("Switchbox: ${switchKontrol}");
                print("Switchbox: ${checkBoxKontrol}");
                print("${radioDeger}");
                print("Slider Durum: ${ilerleme}");
                print("Ülke Durum: ${secilenUlke}");
              },
                  child: Text("Göster")),
            ],
          ),
        ),
      ),
    );
  }
}
