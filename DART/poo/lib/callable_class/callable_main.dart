import 'package:minha_conta/callable_class/enviar_email.dart';

void main(List<String> args) {
  var email = EnviarEmail();
  email.enviar("balfasdfasdfafd");

  //chamando a classe como se fosse um metodo
  email("safasdfasdfafadf");
}
