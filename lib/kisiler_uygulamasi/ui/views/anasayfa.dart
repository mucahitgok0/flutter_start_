import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/ui/cubit/anasayfa_cubit.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/ui/views/detay_sayfa.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/ui/views/kayit_sayfa.dart';



class Anasyfa extends StatefulWidget {
  const Anasyfa({Key? key}) : super(key: key);

  @override
  State<Anasyfa> createState() => _AnasyfaState();
}

class _AnasyfaState extends State<Anasyfa> {
  bool aramaYapiliyorMu = false;
  
  void initState() {
    super.initState();
    context.read<AnasayfaCubit>().kisileriYukle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyorMu ?
        TextField(decoration: InputDecoration(hintText: "Ara"),
        onChanged: (aramaSonucu){
          context.read<AnasayfaCubit>().ara(aramaSonucu);
        },
        ) :
        Text("Anasayfa"),
        actions: [
          aramaYapiliyorMu ?
          IconButton(onPressed: (){
            setState(() {
              aramaYapiliyorMu = false;
            });
            context.read<AnasayfaCubit>().kisileriYukle();
          }, icon: Icon(Icons.clear)) :
              IconButton(onPressed: (){
                setState(() {
                  aramaYapiliyorMu = true;
                });
              }, icon: Icon(Icons.search))
        ],

      ),
      body: BlocBuilder<AnasayfaCubit, List<Kisiler>>(
        builder: (context, kisilerListesi){
          if(kisilerListesi.isNotEmpty){
            return ListView.builder(
              itemCount: kisilerListesi.length,
              itemBuilder:(context, indeks){
                var kisi = kisilerListesi[indeks];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(kisi: kisi)));
                  },
                  child: Card(
                    child: SizedBox(height: 100,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(kisi.kisi_ad,style: const TextStyle(fontSize: 20),),
                                Text(kisi.kisi_tel),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(onPressed: (){
                            setState(() {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("${kisi.kisi_ad} silinsin mi?"),
                                  action: SnackBarAction(label: "Evet", 
                                      onPressed: (){
                                    //sil(kisi.kisi_id);
                                        context.read<AnasayfaCubit>().sil(kisi.kisi_id);
                                      }
                                  ),
                                  ));
                            });
                          }, icon: Icon(Icons.clear),color: Colors.black54,)
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          else{
            return const Center();
          }
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => KayitSayfa()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
