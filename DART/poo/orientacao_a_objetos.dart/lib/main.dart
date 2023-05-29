import 'package:orientacao_a_objetos/classes/camisesta.dart';

void main(List<String> args) {
  var camiseta1 = Camiseta(marca: 'Nike', tamanho: "P");
  camiseta1.corExterna = "verde";

  print(camiseta1.toString());

  var camiseta2 = Camiseta(marca: 'Addidas', tamanho: 'G');

  print(camiseta2.toString());

  print(Camiseta.nomeIndustrial);
}
