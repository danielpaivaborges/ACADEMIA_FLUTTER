void main(List<String> args) {
  //SEM CANCELAR O FUTURO, MAS ESTABELECENDO UM PRAZO
  //NÃO EXISTE MEIO DE CANCELAR UM FUTURE REGISTRADO NO EVENT LOOP
  //USAR COM MODERAÇÃO, SO EM CASOS EXTREMOS

  final aguardando = inserindoAlgoBemLento();
  print(DateTime.now().toIso8601String());
  aguardando.timeout(Duration(seconds: 2)).catchError((error) {
    print('terminou com erro: $error');
  });
}

Future<void> inserindoAlgoBemLento() {
  return Future.delayed(Duration(seconds: 3), () {
    print('terminou o processamento');
    print(DateTime.now().toIso8601String());
  });
}
