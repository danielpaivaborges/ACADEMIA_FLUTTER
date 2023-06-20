import 'dart:convert';

class City {
  int id;
  String name;
  City({required this.id, required this.name});

  @override
  String toString() {
    return 'cidade: $name ($id)';
  }

  //SERIALIZAR
  Map<String, dynamic> toMap() {
    return {"id": id, "name": name};
  }

  String toJson() => jsonEncode(toMap());

  //DESERIALIZAR
  factory City.fromMap(Map<String, dynamic> mapa) {
    return City(id: mapa["id"] ?? 0, name: mapa["name"] ?? "");
  }
  factory City.fromJson(String json) => City.fromMap(jsonDecode(json));
}
