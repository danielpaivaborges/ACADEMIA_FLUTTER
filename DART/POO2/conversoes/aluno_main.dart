import 'aluno.dart';
import 'curso.dart';

void main(List<String> args) {
  var alunoADF = <String, Object>{
    'nome': 'Daniel Paiva',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descrição': "Melhor curso de Flutter do Brasil"
      },
      {'nome': 'Imersão Getx', 'descrição': 'Imersão em getx'},
      {
        'nome': 'Imersão Clean Code',
        'descrição': 'um curso de imersão em código limpo'
      }
    ]
  };

  final cursosMap = alunoADF['cursos'] as List<Map<String, String>>;
  final cursos = cursosMap.map(
    (curso) {
      var nome = curso['nome'] as String;
      var descricao = curso['descrição'] as String;
      return Curso(nome: nome, descricao: descricao);
    },
  ).toList();

  final nomeAluno = alunoADF['nome'] as String;
  final aluno = Aluno(nome: nomeAluno, cursos: cursos);
  print(aluno);
}
