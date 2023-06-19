import 'package:consumindo_api/repository/cliente_repository.dart';

Future<void> main(List<String> args) async {
  final clientes = ClienteRepository();
  final resposta = await clientes.recuperaClientes();
  print(resposta);
}
