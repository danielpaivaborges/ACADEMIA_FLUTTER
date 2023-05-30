import 'package:orientacao_a_objetos/heranca/animal.dart';

class Cachorro extends Animal {
  String? som;

  Cachorro({required super.idade});

  @override
  int calcularIdadeHumana() {
    return idade * 7;
  }
}
