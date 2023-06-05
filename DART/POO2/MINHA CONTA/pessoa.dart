class Pessoa {
  String? nome;
  int? idade;

  void imprimir() {
    print('o nome da pessoa é ${nome!.toUpperCase()}');
  }
}
