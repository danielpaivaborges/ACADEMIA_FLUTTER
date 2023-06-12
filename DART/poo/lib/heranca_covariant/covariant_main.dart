import 'package:minha_conta/heranca_covariant/banana.dart';
import 'package:minha_conta/heranca_covariant/macaco.dart';

void main(List<String> args) {
  var mac1 = Macaco();
  //UTILIZANDO A COVARIANCIA PARA ACEITAR O TIPO DE BANANA
  mac1.comer(Banana(tipo: 'nanica'));
}
