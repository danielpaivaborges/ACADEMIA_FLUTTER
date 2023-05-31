import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

void main(List<String> args) {
  Carro veiculo = Gol();
  Carro veiculo2 = Uno();
  imprimir(veiculo);
  imprimir(veiculo2);
}

void imprimir(Carro carro) {
  print("""
  tipo: ${carro.runtimeType}
  portas: ${carro.portas}
  rodas: ${carro.rodas}
  motor: ${carro.motor}
  Velocidade = ${carro.velocidade()}
  //verificando o tipo de objeto e fazendo condicional
  Rodas Esportivas = ${carro is Gol ? carro.tipoRoda() : "não disponível"};
""");
}
