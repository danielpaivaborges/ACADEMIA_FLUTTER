import 'dart:convert';

import 'package:consumindo_api/models/telefone.dart';

class Cliente {
  int id;
  String nome;
  int? idade;
  Telefone telefone;

  Cliente(
      {required this.id,
      required this.nome,
      required this.telefone,
      this.idade});

  @override
  String toString() {
    return idade != 0
        ? "nome: ${nome.toUpperCase()}, id: $id, idade: $idade, telefone: $telefone"
        : "nome: $nome, id: $id, telefone:$telefone";
  }

  //SERIALIZAÇÃO
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "nome": nome,
      "idade": idade ?? 0,
      "telefone": telefone.toMap()
    };
  }

  String toJson() => jsonEncode(toMap());

  //DESERIALIZAÇÃO
  factory Cliente.fromMap(Map<String, dynamic> mapa) {
    return Cliente(
        id: mapa['id'] ?? 0,
        nome: mapa['nome'] ?? "",
        idade: mapa['idade'] ?? 0,
        telefone: Telefone.fromMap(mapa['telefone'] ?? {}));
  }
  factory Cliente.fromJson(String json) => Cliente.fromMap(jsonDecode(json));
}
