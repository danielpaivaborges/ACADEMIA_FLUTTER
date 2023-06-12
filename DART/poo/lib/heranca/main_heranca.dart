import 'package:minha_conta/heranca/cachorro.dart';

void main(List<String> args) {
  var cachorro = Cachorro(idade: 5);
  cachorro.idade = 5;
  print(cachorro.calcularIdadeHumana());
}
