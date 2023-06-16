import 'package:consumo_api_alunos/repositories/aluno_respository.dart';

Future<void> main(List<String> args) async {
  final alunoRepository = AlunoRepository();
  final alunos = await alunoRepository.buscarPorId(0);
  print(alunos);
}
