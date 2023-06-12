import 'package:minha_conta/heranca/animal.dart';

class Gato extends Animal {
  Gato({required super.idade});

  @override
  int calcularIdadeHumana() {
    return idade * 15;
  }
}
