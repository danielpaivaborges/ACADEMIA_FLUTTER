import 'package:consumindo_api/repository/cliente_repository.dart';

Future<void> main(List<String> args) async {
  final lista = ClienteRepository();
  final resposta = await lista.recuperaDados();
  print(resposta[0].telefone);
}
