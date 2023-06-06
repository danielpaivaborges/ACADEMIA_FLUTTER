import 'package:minha_conta/mixins/artista.dart';
import 'package:minha_conta/mixins/cantar.dart';
import 'package:minha_conta/mixins/dancar.dart';

//implementando um mixin
class Joao extends Artista with Dancar, Cantar {}
