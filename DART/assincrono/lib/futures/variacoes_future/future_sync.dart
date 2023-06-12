void main(List<String> args) {
  //future.sync vai executar a função sincronamente com o main
  //sem o sync
  print('iniciando o main');
  Future<String>(() {
    print("executando a future numero 1");
    return 'resultado Future 1';
  }).then(print);

  //com o sync, o erro ou sucesso so se completa na proxima iteração
  Future<String>.sync(() {
    print("executando a future numero 2");
    return 'resultado future 2';
  }).then(print);

  print('encerrando o main');
}
