Future<int> buscarID() async => 80;
Future<String> buscarNome(int id) async => "daniel paiva - $id";

//metodo normal
Future<String> buscarUsuario() {
  return buscarID().then((id) {
    return buscarNome(id).then((nome) {
      return "usuario $nome";
    });
  });
}

//metodo mais eficiente
Future<String> buscarNomeAssincrono() async {
  final id = await buscarID();
  final nome = await buscarNome(id);
  return 'usuario $nome';
}

void main(List<String> args) {
  // var usuario = buscarUsuario();
  // usuario.then(print);
  // print(usuario);

  buscarNomeAssincrono().then(print);
}
