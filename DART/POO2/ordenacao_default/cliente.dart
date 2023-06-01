class Cliente implements Comparable<Cliente> {
  String nome;
  String Telefone;

  Cliente({
    required this.nome,
    required this.Telefone,
  });

  @override
  String toString() {
    return this.nome;
  }

  @override
  int compareTo(Cliente other) {
    return nome.compareTo(other.nome);
  }
}
