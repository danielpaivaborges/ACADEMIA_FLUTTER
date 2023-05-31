import 'artista.dart';

mixin Dancar on Artista {
  String dancar() {
    return "Dançando";
  }

  @override
  String habilidade() {
    return "possui muita habilidade de dança";
  }
}
