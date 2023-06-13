void main(List<String> args) {
  //com await async tambem e possivel usar o try catch

  retornaUsuario().then(print);
}

Future<int> buscarID() async => 80;
Future<String> buscarNome(int id) async {
  throw Exception("conexão perdida");
  //return 'Daniel Paiva Borges - $id';
}

Future<String> retornaUsuario() async {
  final id = await buscarID();
  final nome = await buscarNome(id).catchError((error) {
    print("tivemos um problema");
    return ('nome não encontrado');
  });
  return "Nome do usuario retornado: $nome";
}
