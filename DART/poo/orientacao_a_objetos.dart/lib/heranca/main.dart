import 'package:orientacao_a_objetos/heranca/animal.dart';
import 'package:orientacao_a_objetos/heranca/cachorro.dart';

void main(List<String> args) {
  var animal1 = Animal();
  animal1.idade = 5;
  animal1.tamanho = "médio";
  print(animal1.recuperarIdade());

  var cao1 = Cachorro();
  cao1.idade = 3;
  cao1.som = "latido";
}
