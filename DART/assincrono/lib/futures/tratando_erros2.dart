void main(List<String> args) {
  Future<int>(() {
    throw Exception("um erro qualquer");
    //return 10 ~/ 2;
  }).then((value) {
    print('o resultado foi $value');
  }).catchError((error) {
    print("deu um erro generico $error");
  }).catchError((error) {
    error is UnsupportedError;
  });
}
