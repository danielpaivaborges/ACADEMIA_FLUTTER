import 'dart:convert';

class Cliente {
  int id;
  String nome;
  int? idade;

  Cliente({required this.id, required this.nome, this.idade});

  @override
  String toString() {
    return idade != 0
        ? "nome: ${nome.toUpperCase()}, id: $id, idade: $idade"
        : "nome: ${nome.toUpperCase()}, id: $id";
  }

  //SERIALIZAÇÃO
  Map<String, dynamic> toMap() {
    return {"id": id, "nome": nome, "idade": idade ?? 0};
  }

  String toJson() => jsonEncode(toMap());

  //DESERIALIZAÇÃO
  factory Cliente.fromMap(Map<String, dynamic> mapa) {
    return Cliente(
        id: mapa["id"] ?? 0,
        nome: mapa["nome"] ?? "",
        idade: mapa["idade"] ?? 0);
  }
  factory Cliente.fromJson(String json) => Cliente.fromMap(jsonDecode(json));
}
