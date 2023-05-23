void main(List<String> args) {
  var produtos = <String, String>{};

//adicionando registros no map
  produtos.putIfAbsent('nome', () => 'cerveja');
  produtos.putIfAbsent('embalagem', () => 'garrafa');

  print(produtos);
//atualizando um registro no map
  produtos.update('nome', (value) => 'refrigerante');
  print(produtos);

  //acessando dados
  print(produtos['nome']!.toUpperCase());
  print(produtos.keys);
  print(produtos.values);
  print(produtos.entries);

  //acrescentando campo
  print('****************');
  produtos.update(
    'preço',
    (value) => '10',
    ifAbsent: () => '10',
  );
  print(produtos.keys);
  print(produtos.values);
  print(produtos.entries);

  print('******varrendo os valores com for each******');
  produtos.forEach(
    (key, value) {
      print('o valor da chave: $key é: $value');
    },
  );

  print('******varrendo os valores com for in******');
  for (var entrada in produtos.entries) {
    print("o valor da chave ${entrada.key} é ${entrada.value}");
  }

  print('****trabalhando com o map entry *****');
  var mapanovo = produtos.map((key, value) {
    return MapEntry("$key novo", value.toUpperCase());
  });
  print(mapanovo);
}
