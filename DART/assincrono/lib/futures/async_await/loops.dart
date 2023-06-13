Future<void> main(List<String> args) async {
  print("inicio do main");
  final nomes = ['daniel', 'arthur', 'carolaine', 'josé eustaquio', 'marília'];
  await Future.forEach<String>(nomes, (nome) async {
    await saudacao(nome);
  });
  print("fim do main");
}

Future<String> saudacao(String nome) async {
  print('inicio saudação - $nome');
  return Future.delayed(Duration(seconds: 1), () {
    print("fim da saudação $nome");
    return 'olá $nome';
  });
}
