import 'package:minha_conta/polimorfismo/medico.dart';

class Obstetra extends Medico {
  @override
  void operar() {
    print('O Obstetra está realizando o parto.');
  }
}
