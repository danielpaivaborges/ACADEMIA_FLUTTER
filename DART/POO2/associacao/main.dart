void main(List<String> args) {}

class Pessoa {
  String nome;
  //se é obrigatório a associação é do tipo composição
  Endereco endereco = Endereco();
  //se não é obrigatório a associação é do tipo agregação
  Telefone telefone;
  Pessoa({required this.nome, required this.telefone, required this.endereco});
}

class Endereco {}

class Telefone {}
