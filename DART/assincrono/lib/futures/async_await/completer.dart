import 'dart:async';

void main(List<String> args) {
  buscarAlgo(1)
      .then((value) => print('mensagem de sucesso: $value'))
      .catchError((erro) {
    print('deu merda $erro');
  });
}

Future<String> buscarAlgo(int numero) {
  final completer = Completer<String>();
  Timer(Duration(seconds: 2), () {
    if (numero == 0) {
      completer.complete("numero enviado com sucesso");
    } else {
      completer.completeError('numero enviado com erro', StackTrace.current);
    }
  });
  return completer.future;
}
