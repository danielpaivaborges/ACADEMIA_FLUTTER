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
      rua: (map['rua'] ?? "") as String,
      numero: (map['numero'] ?? 0) as int,
      cep: (map['CEP'] ?? "") as String,
      cidade: Cidade.fromMap((map['cidade'] ?? {}) as Map<String, dynamic>),
      telefone:
          Telefone.fromMap((map['telefone'] ?? {}) as Map<String, dynamic>),
    );
  }

  factory Endereco.fromJson(String source) =>
      Endereco.fromMap(json.decode(source) as Map<String, dynamic>);
}
