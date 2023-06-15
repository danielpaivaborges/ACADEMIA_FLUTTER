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

  //SERIALIZAÇÃO (toMap => toJson)
  Map<String, dynamic> toMap() {
    return {
      'rua': rua,
      'numero': numero,
      'CEP': cep,
      'cidade': cidade.toMap(),
      'telefone': telefone.toMap()
    };
  }

  String toJson() => jsonEncode(toMap());

  //DESSERIALIZAÇÃO(fromMap => fromJson)
  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
        rua: map['rua'] ?? '',
        numero: map['numero'] ?? '',
        cep: map['CEP'] ?? '',
        cidade: Cidade.fromMap(map['cidade'] ?? {}),
        telefone: Telefone.fromMap(map['telefone'] ?? {}));
  }

  factory Endereco.fromJson(String json) => Endereco.fromMap(jsonDecode(json));
}
