class EnviarEmail {
  //callable class
  void call(String email) {
    print("chamando metodo call");
    enviar(email);
  }

  void enviar(String email) {
    print("chamando metodo enviar");
  }
}
