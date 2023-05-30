class Animal {
  String? tamanho;
  int? idade;

  int recuperarIdade() {
    return idade ?? 0;
  }
}
