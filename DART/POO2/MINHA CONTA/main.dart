import 'pessoa.dart';

void main(List<String> args) {
  Pessoa p1 = Pessoa()
    ..nome = "daniel"
    ..idade = 49;
  p1.imprimir();
}
