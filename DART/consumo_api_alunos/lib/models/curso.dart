import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Curso {
  int id;
  String nome;
  bool isAluno = false;
  Curso({
    required this.id,
    required this.nome,
    required this.isAluno,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'isAluno': isAluno,
    };
  }

  String toJson() => json.encode(toMap());

  factory Curso.fromMap(Map<String, dynamic> map) {
    return Curso(
      id: map['id'] ?? 0,
      nome: map['nome'] ?? "",
      isAluno: map['isAluno'] ?? false,
    );
  }

  factory Curso.fromJson(String source) =>
      Curso.fromMap(json.decode(source) as Map<String, dynamic>);
}
