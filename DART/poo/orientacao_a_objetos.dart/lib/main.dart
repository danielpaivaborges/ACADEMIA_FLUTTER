import 'package:orientacao_a_objetos/classes/camisesta.dart';

void main(List<String> args) {
  var camiseta1 = Camiseta(cor: 'preta', marca: 'Nike', tamanho: "P");

  print(camiseta1.toString());

  var camiseta2 = Camiseta(cor: 'branca', marca: 'Addidas', tamanho: 'G');
  print(camiseta2.toString());

  print(Camiseta.nomeIndustrial);
}
