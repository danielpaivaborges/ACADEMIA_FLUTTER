// ignore_for_file: public_member_api_docs, sort_constructors_first
class Cliente implements Comparable {
  String nome;
  String telefone;
  Cliente({
    required this.nome,
    required this.telefone,
  });

  @override
  String toString() {
    return nome;
  }

  @override
  int compareTo(other) {
    return nome.compareTo(other.nome);
  }
}
