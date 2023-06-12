import 'package:minha_conta/polimorfismo/medico.dart';

class Pediatra extends Medico {
  @override
  void operar() {
    print('O Pediatra está examinando o bebe');
  }
}
