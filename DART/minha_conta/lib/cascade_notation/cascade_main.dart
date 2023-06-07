void main(List<String> args) {
  var pessoa = Pessoa();
  pessoa
    ..nome = 'daniel'
    ..email = 'danielpaivaborges@outlook.com'
    ..site = 'www.google.com.br';

  var mapa = <String, String>{}
    ..putIfAbsent("nome", () => 'daniel')
    ..putIfAbsent("idade", () => '49');
  print(mapa.values.toList());
}

class Pessoa {
  String? nome;
  String? email;
  String? site;
}
