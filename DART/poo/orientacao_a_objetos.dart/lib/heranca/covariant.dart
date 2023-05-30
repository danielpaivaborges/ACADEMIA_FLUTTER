import 'package:orientacao_a_objetos/heranca/banana.dart';
import 'package:orientacao_a_objetos/heranca/macaco.dart';

void main(List<String> args) {
  var macaco = Macaco();
  macaco.comer(Banana("nanica"));
  print(macaco);
}
