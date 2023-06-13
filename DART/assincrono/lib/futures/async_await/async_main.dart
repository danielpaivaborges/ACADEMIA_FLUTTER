void main(List<String> args) {
  //o ASYNC substitui o Future.value

  var recado = metodoAssincronoSemAsync();
  recado.then(print);
  var recado2 = metodoAssincrono();
  recado2.then(print);
  retornaVoid().whenComplete(() => print('completei o void'));
}

Future<String> metodoAssincronoSemAsync() {
  return Future.value("metodo assincrono sem async");
}

Future<String> metodoAssincrono() async {
  return "este método usa async;";
}

Future<void> retornaVoid() async {
  print("vazio");
}
