import 'dart:convert';
import 'curso.dart';
import 'endereco.dart';

class Aluno {
  int id;
  String nome;
  int? idade;
  List<String> nomeCursos;
  List<Curso> cursos;
  Endereco endereco;
  Aluno({
    required this.id,
    required this.nome,
    this.idade,
    required this.nomeCursos,
    required this.cursos,
    required this.endereco,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'nome': nome,
      'nomeCursos': nomeCursos,
      'cursos': cursos.map((x) => x.toMap()).toList(),
      'endereco': endereco.toMap(),
    };
    if (idade != null) {
      map['idade'] = idade;
    }
    return map;
  }

  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
        id: map['id'] ?? 0,
        nome: map['nome'] ?? '',
        idade: map['idade'],
        nomeCursos: List<String>.from(map['nomeCursos']),
        cursos: map['cursos']
                ?.map<Curso>((cursoMapa) => Curso.fromMap(cursoMapa))
                .toList() ??
            <Curso>[],
        endereco: Endereco.fromMap(map['endereco'] ?? <String, dynamic>{}));
  }

  String toJson() => json.encode(toMap());

  factory Aluno.fromJson(String source) =>
      Aluno.fromMap(json.decode(source) as Map<String, dynamic>);
  @override
  String toString() {
    return "id: $id - $nome";
  }
}
