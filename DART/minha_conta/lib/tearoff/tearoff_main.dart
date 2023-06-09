import 'package:minha_conta/tearoff/pessoa.dart';

void main(List<String> args) {
  final pessoas = ["daniel", "arthur", "carol"];

//metodo tradicional
  var pessoaMapeada = pessoas.map((nome) => Pessoa(nome)).toList();
  for (Pessoa pessoa in pessoaMapeada) {
    print(pessoa.nome);
  }

  //utilizando tear off
  var pessoaTearOff = pessoas.map(Pessoa.nome).toList();
  for (Pessoa pessoa in pessoaTearOff) {
    print(pessoa.nome);
  }
}
