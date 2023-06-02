class Pessoa implements Comparable {
  String nome;

  //construtor padrão
  Pessoa({
    required this.nome,
  });

  //construtor nomeado
  Pessoa.nome(this.nome);

  //sobrescrevendo toString
  @override
  String toString() {
    return nome;
  }

  //sobrescrevendo sort
  @override
  int compareTo(other) {
    return this.nome.compareTo(other.nome);
  }
}
