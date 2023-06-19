import 'dart:convert';

import 'package:consumindo_api/models/cliente.dart';
import 'package:http/http.dart' as http;

class ClienteRepository {
  Future<List<Cliente>> recuperaClientes() async {
    final responseClientes =
        await http.get(Uri.parse("http://localhost:8080/clientes"));
    final respostaMapa = jsonDecode(responseClientes.body);
    final lista = respostaMapa.map<Cliente>((listaClientes) {
      return Cliente.fromMap(listaClientes);
    }).toList();
    return lista;
  }
}
