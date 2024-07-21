import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dersleri/bildirim_konum_kullanimi/bildirim_kullanimi.dart';
import 'package:flutter_dersleri/bildirim_konum_kullanimi/konum_kullanimi.dart';
import 'package:flutter_dersleri/bottom_nav_kullanimi/bottom_nav_sayfa.dart';
import 'package:flutter_dersleri/flutter_dersleri/pizza_anasayfa.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/ui/cubit/anasayfa_cubit.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/ui/cubit/detay_sayfa_cubit.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/ui/cubit/kayit_sayfa_cubit.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/ui/views/detay_sayfa.dart';
import 'package:flutter_dersleri/sayfaGecis_sayac/sayac.dart';
import 'package:flutter_dersleri/kullanici_etkilesimi/kullanici_etkilesimi_sayfa.dart';
import 'package:flutter_dersleri/sp_kullanimi/home_page.dart';
import 'package:flutter_dersleri/widget_kullanimi/anasayfa.dart';
import 'package:flutter_dersleri/kisiler_uygulamasi/ui/views/anasayfa.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => KayitSayfaCubit()),
        BlocProvider(create: (context) => DetaySayfaCubit()),
        BlocProvider(create: (context) => AnasayfaCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        //emülatorün sağında bulunan debug yazısının kaybolmasını sağlıyor
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Konum(),
      ),
    );
  }
}
