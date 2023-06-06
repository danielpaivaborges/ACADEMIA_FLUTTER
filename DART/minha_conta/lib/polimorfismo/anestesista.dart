import 'package:minha_conta/polimorfismo/medico.dart';

class Anestesista extends Medico {
  @override
  void operar() {
    print("O Anestesista está anestesiando o paciente");
  }
}
