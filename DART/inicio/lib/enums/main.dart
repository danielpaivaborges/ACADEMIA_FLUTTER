void main(List<String> args) {
  var cor = Cores.vermelho;

  print(cor);

  var copiarCor = Cores.values.byName("vermelho");
  print(copiarCor);
}

enum Cores {
  amarelo,
  vermelho,
  branco,
  preto;
}
