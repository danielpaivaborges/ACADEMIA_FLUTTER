import 'package:minha_conta/interfaces/carro.dart';
import 'package:minha_conta/interfaces/gol.dart';
import 'package:minha_conta/interfaces/uno.dart';

void main(List<String> args) {
  var carro1 = Uno();
  var carro2 = Gol();
  imprimirDadosCarro(carro1);
  imprimirDadosCarro(carro2);
}

void imprimirDadosCarro(Carro carro) {
  print('''
O carro é um: ${carro.runtimeType}
ele tem ${carro.rodas} rodas, ${carro.portas} portas
e é equipado com um motor ${carro.motor}, a velocidade máxima é de ${carro.velocidadeMaxima()} km/hora.
Tipo de roda: ${carro is Gol ? carro.tipoDeRodas : 'não disponível'};
 ''');
  //quando checamos se a variável é de um determinado tipo ela é promovida
  if (carro is Gol) {
    print("este carro é equipado com rodas do tipo ${carro.tipoDeRodas}");
  }
}
