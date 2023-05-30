import 'carro.dart';

class Gol implements Carro {
  @override
  String motor = "turbo";

  @override
  int portas = 4;

  @override
  int rodas = 4;

  @override
  int velocidade() {
    return 120;
  }
}
