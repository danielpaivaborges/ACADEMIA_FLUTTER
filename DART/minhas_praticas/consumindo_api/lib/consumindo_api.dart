import 'package:consumindo_api/repository/cliente_repository.dart';

Future<void> main(List<String> args) async {
  final resposta = ClienteRepository();
  final lista = await resposta.recuperaClientes();
  print(lista[0]);
}
