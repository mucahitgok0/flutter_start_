import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dersleri/filmler_uygulamasi/data/entity/filmler.dart';
import 'package:flutter_dersleri/filmler_uygulamasi/data/repo/filmlerdao_repository.dart';
class HomePageCubit extends Cubit<List<Filmler>>{
  HomePageCubit():super(<Filmler>[]);

  var frepo = FilmlerDaoRepo();

  Future<void> filmleriTYukle() async{
   var liste = await frepo.filmleriYukle();
   emit(liste);
  }
}