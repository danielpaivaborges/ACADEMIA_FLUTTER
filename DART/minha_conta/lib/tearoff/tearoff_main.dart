import 'package:minha_conta/tearoff/pessoa.dart';

void main(List<String> args) {
  final pessoas = ["daniel", "arthur", "carol"];

//metodo tradicional - mapa com função anonima
  var pessoaMapeada = pessoas.map((nome) => Pessoa(nome)).toList();
  for (Pessoa pessoa in pessoaMapeada) {
    print(pessoa.nome);
  }

  //utilizando tear off - construtor nomeado
  var pessoaTearOff = pessoas.map(Pessoa.nome).toList();
  for (Pessoa pessoa in pessoaTearOff) {
    print(pessoa.nome);
  }

  //utilizando o new para chamar o construtor padrão
  var pessoaNew = pessoas.map(Pessoa.new).toList();
  for (Pessoa pessoa in pessoaNew) {
    print(pessoa.nome);
  }
}
