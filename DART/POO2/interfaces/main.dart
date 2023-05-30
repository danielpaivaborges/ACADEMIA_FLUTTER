import 'carro.dart';
import 'gol.dart';

void main(List<String> args) {
  Carro veiculo = Gol();
  imprimir(veiculo);
}

void imprimir(Carro carro) {
  print("""
  tipo: ${carro.runtimeType}
  portas: ${carro.portas}
  rodas: ${carro.rodas}
  motor: ${carro.motor}
  Velocidade = ${carro.velocidade()}
""");
}
