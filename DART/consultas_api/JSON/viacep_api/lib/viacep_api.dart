import 'dart:convert';

import 'package:http/http.dart';

Future<void> main(List<String> args) async {
  final resultado =
      await get(Uri.parse('https://viacep.com.br/ws/38840230/json/'));

  if (resultado.statusCode != 200) {
    print("deu merda galera");
  } else {
    final jsonMapeado = json.decode(resultado.body);
    if (jsonMapeado.containsKey('erro')) {
      print("este cep está incorreto");
    } else {
      print(jsonMapeado['logradouro'].toUpperCase());
    }
  }

//   if (resultado.statusCode == 200) {
//     print(
//         '''
// body: ${resultado.body}
// codigo de retorno: ${resultado.statusCode}
// headers: ${resultado.headers}
// request: ${resultado.request}
// ''');
//   }
}
