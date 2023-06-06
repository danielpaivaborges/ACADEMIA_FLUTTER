import 'package:minha_conta/heranca_covariant/banana.dart';
import 'package:minha_conta/heranca_covariant/mamifero.dart';

class Macaco extends Mamifero {
  @override
  void comer(Banana fruta) {}
}
