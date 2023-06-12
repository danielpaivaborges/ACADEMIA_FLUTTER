import 'package:minha_conta/mixins/artista.dart';

//criando um mixin

//quando eu coloco o ON eu estabeleço que para uma classe poder usar o Dancar ela tem que extender o Artista
//se tirar o ON essa limitação deixa de existir.

mixin Dancar on Artista {}
