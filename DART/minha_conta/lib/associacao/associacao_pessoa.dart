// ignore_for_file: public_member_api_docs, sort_constructors_first
class Pessoa {
  String nome;
  //se é obrigatória é uma composição
  Endereco endereco;
  //se é opcional é agregação
  Telefone telefone;

  //construtor
  Pessoa({
    required this.nome,
    required this.endereco,
    required this.telefone,
  });
}

class Endereco {}

class Telefone {}
