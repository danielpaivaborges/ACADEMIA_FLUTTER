Future<void> main(List<String> args) async {
  print("inicio do main");
  final nomes = ['daniel', 'arthur', 'carolaine', 'josé eustaquio', 'marília'];

  //NESTA FORMA EXECUTA TODOS DE UMA VEZ

  final nomesfuturos = nomes
      .map(
        (nome) => saudacao(nome),
      )
      .toList();

  final nomesProcessados = await Future.wait(nomesfuturos);
  print(nomesProcessados);
  print("fim do main");
}

Future<String> saudacao(String nome) async {
  print('inicio saudação - $nome');
  return Future.delayed(Duration(seconds: 1), () {
    print("fim da saudação $nome");
    return 'olá $nome';
  });
}
