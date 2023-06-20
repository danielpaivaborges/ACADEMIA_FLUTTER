// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Telefone {
  String ddd;
  String numero;
  Telefone({
    required this.ddd,
    required this.numero,
  });

  @override
  String toString() {
    return "$ddd - $numero ";
  }

  //SERIALIZAR
  Map<String, dynamic> toMap() {
    return {"ddd": ddd, "numero": numero};
  }

  String toJson() => jsonEncode(toMap());

  //DESERIALIZAR
  factory Telefone.fromMap(Map<String, dynamic> mapa) {
    return Telefone(ddd: mapa['ddd'], numero: mapa['numero']);
  }
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));
}
