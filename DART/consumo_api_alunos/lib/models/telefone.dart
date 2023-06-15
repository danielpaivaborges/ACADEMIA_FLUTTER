// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;
  Telefone({
    required this.ddd,
    required this.telefone,
  });

  //SERIALIZAÇÃO
  Map<String, dynamic> toMap() {
    return {"ddd": ddd, "telefone": telefone};
  }

  String toJson() => jsonEncode(toMap());

  //DESERIALIZAÇÃO
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(ddd: map['ddd'] ?? 0, telefone: map['telefone'] ?? "");
  }

  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));
}
