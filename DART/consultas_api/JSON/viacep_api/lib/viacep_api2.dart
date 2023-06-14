import 'dart:convert';

import 'package:http/http.dart';

Future<void> main(List<String> args) async {
  final resposta =
      await get(Uri.parse('https://viacep.com.br/ws/35617000/json/'));
  if (resposta.statusCode != 200) {
    print("A requisição não contém dados válidos");
  } else {
    final jsonMapeado = json.decode(resposta.body);
    if (jsonMapeado.containsKey("erro")) {
      print("este cep não existe");
    } else {
      print(
          'Este Cep pertence a cidade de ${jsonMapeado['localidade'].toUpperCase()}, que fica situada no estado de ${jsonMapeado['uf'].toUpperCase()}');
    }
  }
}
