class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

//construtor normal
  Pessoa(this.nome, this.idade, this.sexo);

  //construtor nomeado
  Pessoa.semNome(this.idade, this.sexo);

  //factory - executa uma logica de negocio antes de criar a instancia
  factory Pessoa.factory() {
    return Pessoa.semNome(5, "idade");
  }
}
