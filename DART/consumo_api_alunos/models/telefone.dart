import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;
  Telefone({
    required this.ddd,
    required this.telefone,
  });

  //PROCESSO DE SERIALIZAÇÃO - EM DOIS PASSOS
  //toMap transforma o objeto em mapa - PRIMEIRO PASSO
  Map<String, dynamic> toMap() {
    return {'ddd': ddd, 'telefone': telefone};
  }

  //metodo para serializar toJson - SEGUNDO PASSO
  String toJson() => jsonEncode(toMap());

//********************************************

  //PROCESSO DE DESERIALIZAÇÃO - precisamos de duas factorys
  //PRIMEIRO PASSO DA DESERIALIZAÇÃO
  factory Telefone.fromJson(String json) {
    final jsonMap = jsonDecode(json);
    return Telefone.fromMap(jsonMap);
  }
  //SEGUNDO PASSO DA DESERIALIZAÇÃO
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(ddd: map['ddd'], telefone: map['telefone']);
  }
}
