import 'dart:convert';

import 'package:consumindo_api/models/cliente.dart';
import 'package:http/http.dart' as http;

class ClienteRepository {
  Future<List<Cliente>> buscarClientes() async {
    final resposta =
        await http.get(Uri.parse('http://localhost:8080/clientes'));
    final listaClientesMapeada =
        (jsonDecode(resposta.body)).map<Cliente>((listaClientes) {
      return Cliente.fromMap(listaClientes);
    }).toList();
    return listaClientesMapeada;
  }

  Future<Cliente> buscarClientePorId(int id) async {
    final resposta =
        await http.get(Uri.parse('http://localhost:8080/clientes/$id'));
    return Cliente.fromJson(resposta.body);
  }
}
