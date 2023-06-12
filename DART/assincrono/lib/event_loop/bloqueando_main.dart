import 'dart:io';

void main(List<String> args) {
  print('iniciando main');
  print(temperaturaAtual());
  print(temperaturaAmanha());
  print('finalizando main');
}

String temperaturaAtual() {
  sleep(Duration(seconds: 2));
  return "esta fazendo trinta graus";
}

String temperaturaAmanha() {
  return 'amanhã fará trinta e dois graus';
}
