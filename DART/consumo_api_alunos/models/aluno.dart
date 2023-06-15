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

  //SERIALIZAÇÃO
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'nome': nome,
      'nomeCursos': nomeCursos,
      'cursos': cursos.map((curso) => curso.toMap()).toList(),
      'endereco': endereco.toMap(),
    };
    if (idade != null) {
      map['idade'] = idade;
    }
    return map;
  }

  String toJson() => jsonEncode(toMap());

//DESERIALIZAÇÃO
  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
        id: map['id'] ?? 0,
        nome: map['nome'] ?? '',
        idade: map['idade'],
        //atenção a esta conversão, aprenda ao maximo
        nomeCursos: List<String>.from(map['nomeCursos']),
        cursos: map['cursos']
                ?.map<Curso>((cursoMap) => Curso.fromMap(cursoMap))
                .toList() ??
            [],
        endereco: Endereco.fromMap(map['endereco'] ?? <String, dynamic>{}));
  }
  factory Aluno.fromJson(String json) => Aluno.fromMap(jsonDecode(json));
}
