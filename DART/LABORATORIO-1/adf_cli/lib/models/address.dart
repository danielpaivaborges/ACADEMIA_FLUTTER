// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:adf_cli/models/city.dart';
import 'package:adf_cli/models/phone.dart';

class Address {
  String street;
  int number;
  String zipCode;
  City city;
  Phone phone;

  Address({
    required this.street,
    required this.number,
    required this.zipCode,
    required this.city,
    required this.phone,
  });

  //SERIALIZAÇÃO
  Map<String, dynamic> toMap() {
    return {
      "street": street,
      "number": number,
      "zipCode": zipCode,
      "city": city.toMap(),
      "phone": phone.toMap()
    };
  }

  String toJson() => jsonEncode(toMap());

  //DESERIALIZAÇÃO
  factory Address.fromMap(Map<String, dynamic> mapa) {
    return Address(
      street: mapa['street'] ?? "",
      number: mapa['number'] ?? 0,
      zipCode: mapa['zipCode'] ?? "",
      city: City.fromMap(mapa['city'] ?? {}),
      phone: Phone.fromMap(mapa['phone'] ?? {}),
    );
  }
  factory Address.fromJson(String json) => Address.fromMap(jsonDecode(json));

  @override
  String toString() {
    return '$street, $number, $city, $zipCode, $phone';
  }
}
