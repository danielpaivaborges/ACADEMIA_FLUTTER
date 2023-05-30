class Pessoa {
  String? nome;
  //composição - quando um atributo de associação é obrigatório (tem um...)
  Endereco endereco = Endereco();
  //agregação - quando um atributo de associação não é obrigatório.
  Telefone? telefone;
}

class Endereco {}

class Telefone {}
