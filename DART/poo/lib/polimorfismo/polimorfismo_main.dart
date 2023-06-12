import 'package:minha_conta/polimorfismo/anestesista.dart';
import 'package:minha_conta/polimorfismo/medico.dart';
import 'package:minha_conta/polimorfismo/obstetra.dart';
import 'package:minha_conta/polimorfismo/pediatra.dart';
import 'package:minha_conta/polimorfismo/residente_anestesista.dart';

void main(List<String> args) {
  //REALIZANDO UM PARTO
  var medicos = <Medico>[
    ResidenteAnestesista(),
    Anestesista(),
    Obstetra(),
    Pediatra()
  ];

  for (Medico medico in medicos) {
    medico.operar();
  }
}
