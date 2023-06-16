import 'package:consumindo_api/repository/cliente_repository.dart';

Future<void> main(List<String> args) async {
  final resposta = ClienteRepository();
  final consulta = await resposta.buscarClientePorId(1);
  print(consulta);
}
