import 'package:orientacao_a_objetos/heranca/cachorro.dart';

void main(List<String> args) {
  var cao1 = Cachorro(idade: 3);

  cao1.som = "latido";
  print(cao1.calcularIdadeHumana());
}
