// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'cidade.dart';
import 'telefone.dart';

class Endereco {
  String rua;
  int numero;
  String cep;
  Cidade cidade;
  Telefone telefone;
  Endereco({
    required this.rua,
    required this.numero,
    required this.cep,
    required this.cidade,
    required this.telefone,
  });

//SERIALIZAÇÃO
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rua': rua,
      'numero': numero,
      'CEP': cep,
      'cidade': cidade.toMap(),
      'telefone': telefone.toMap(),
    };
  }

  String toJson() => json.encode(toMap());

//DESERIALIZAÇÃO
  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      rua: map['rua'] ?? "",
      numero: map['numero'] ?? 0,
      cep: map['CEP'] ?? "",
      cidade: Cidade.fromMap((map['cidade'] ?? {})),
      telefone: Telefone.fromMap((map['telefone'] ?? {})),
    );
  }

  factory Endereco.fromJson(String source) =>
      Endereco.fromMap(json.decode(source));
}
