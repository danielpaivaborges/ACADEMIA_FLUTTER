import 'dart:convert';

class Phone {
  int ddd;
  String phone;

  Phone({required this.ddd, required this.phone});

  @override
  String toString() {
    return 'telefone: $ddd - $phone';
  }

  //SERIALIZAÇÃO
  Map<String, dynamic> toMap() {
    return {"ddd": ddd, "phone": phone};
  }

  String toJson() => jsonEncode(toMap());

  //DESERIALIZAÇÃO
  factory Phone.fromMap(Map<String, dynamic> mapa) {
    return Phone(ddd: mapa['ddd'] ?? 0, phone: mapa['phone'] ?? "");
  }
  factory Phone.fromJson(String json) => Phone.fromMap(jsonDecode(json));
}
