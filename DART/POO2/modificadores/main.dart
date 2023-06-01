import 'pessoamod.dart';

void main(List<String> args) {
  var pessoa = const PessoaMod(nome: "daniel", idade: 49);
  var pessoa2 = const PessoaMod(nome: "daniel", idade: 49);

  print(pessoa ==
      pessoa2); //retorna true devido ao uso de const na classe e no codigo
}
