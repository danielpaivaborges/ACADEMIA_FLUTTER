void main(List<String> args) {
  print(multiplica(5.0, 10.0));
}

double soma({double? valor1, double? valor2}) {
  valor1 ??= 0;
  valor2 ??= 0;
  return valor1 + valor2;
}

double soma2({valor1 = 0, valor2 = 0}) {
  return valor1 + valor2;
}

double multiplica(var1, var2) => var1 * var2;
