import 'anestesista.dart';
import 'medico.dart';
import 'obstetra.dart';
import 'pediatra.dart';
import 'residente.dart';

void main(List<String> args) {
  var equipe = <Medico>[Residente(), Anestesista(), Obstetra(), Pediatra()];
  for (Medico medico in equipe) {
    medico.operar();
  }
}
