import 'dart:convert';

void main(List<String> args) {
  final jsonCep = '''
{
  "cep": "01001-000",
  "logradouro": "Praça da Sé",
  "complemento": "lado ímpar",
  "bairro": "Sé",
  "localidade": "São Paulo",
  "uf": "SP",
  "ibge": "3550308",
  "gia": "1004",
  "ddd": "11",
  "siafi": "7107"
}
 ''';

  final jsonData = json.decode(jsonCep);
  print((jsonData['logradouro']).toUpperCase());
}
