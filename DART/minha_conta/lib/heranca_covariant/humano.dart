import 'package:minha_conta/heranca_covariant/fruta.dart';
import 'package:minha_conta/heranca_covariant/mamifero.dart';

class Humano extends Mamifero {
  @override
  void comer(Fruta fruta) {}
}
