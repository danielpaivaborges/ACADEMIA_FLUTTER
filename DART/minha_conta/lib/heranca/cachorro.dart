import 'package:minha_conta/heranca/animal.dart';

class Cachorro extends Animal {
  Cachorro({required super.idade});

  //sobreescrevendo um método da classe principal
  @override
  int calcularIdadeHumana() {
    return idade * 7;
  }
}
