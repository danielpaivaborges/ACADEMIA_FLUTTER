// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cliente {
  int id;
  String nome;
  int? idade;
  Cliente({
    required this.id,
    required this.nome,
    this.idade,
  });

  //SERIALIZAÇÃO
  Map<String, dynamic> toMap() {
    return {"id": id, "nome": nome, "idade": idade ?? 0};
  }

  String toJson(String json) => jsonEncode(json);

  //DESERIALIZAÇÃO
  factory Cliente.fromMap(Map<String, dynamic> map) {
    return Cliente(
        id: map['id'] ?? 0, nome: map['nome'] ?? "", idade: map['idade'] ?? 0);
  }
  factory Cliente.fromJson(String json) =>
      Cliente.fromMap(jsonDecode(json) as Map<String, dynamic>);

  @override
  String toString() {
    return idade != 0
        ? 'O cliente $nome possui o id $id e atualmente tem a idade de $idade anos'
        : 'O cliente $nome possui o id $id';
  }
}
