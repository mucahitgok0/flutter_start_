import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/entity/kisiler.dart';
import '../../data/repo/kisilerdao_repository.dart';

class AnasayfaCubit extends Cubit<List<Kisiler>>{
  AnasayfaCubit():super(<Kisiler>[]);

  var krepo = KisilerDaoRepository();

  Future <void> sil (String kisi_id) async{
    await krepo.sil(kisi_id);
    await krepo.kisileriYukle();
  }

  Future<void> kisileriYukle() async{
    var liste = await krepo.kisileriYukle();
    emit(liste);
  }

  Future<void> ara(String aramaKelimesi) async{
    var liste = await krepo.ara(aramaKelimesi);
    emit(liste);
  }

}