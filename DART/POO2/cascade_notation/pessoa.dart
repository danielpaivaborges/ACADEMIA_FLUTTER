class Pessoa {
  String? nome;
  String? email;
  String? site;

  void imprimir() {
    print('''
nome: ${nome!.toUpperCase()}
 ''');
  }
}
