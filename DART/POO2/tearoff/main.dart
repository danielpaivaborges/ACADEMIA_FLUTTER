// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'pessoa.dart';

void main(List<String> args) {
  //criando uma lista de nomes
  var nomes = ['daniel', 'arthur', 'carol', 'marilia', 'jose eustaquio'];

  //metodo tradicional
  final pessoas = nomes.map((nome) => Pessoa(nome: nome)).toList();
  print(pessoas);

  //METODO COM O TEAR OFF, PASSANDO O CONSTRUTOR COMO FUNÇÃO
  //neste caso aqui chamamos o construtor nomeado
  final pessoas2 = nomes.map<Pessoa>(Pessoa.nome).toList();

  //também é possível chamar o construtor padrão, não nomeado
  //final pessoas3 = nomes.map<Pessoa>(Pessoa.new)).toList();

  //colocando a lista em ordem
  pessoas2.sort();

  //percorrendo todos os itens da lista
  for (var pessoa in pessoas2) {
    print(pessoa.nome.toUpperCase());
  }
}
