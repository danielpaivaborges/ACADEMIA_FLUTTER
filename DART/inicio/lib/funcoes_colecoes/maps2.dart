void main(List<String> args) {
  var mapaCursos = <String, Object>{
    'nome': 'Daniel Paiva',
    'Cursos': [
      {'nome do Curso': "engenharia", 'duração': 'cinco anos'},
      {'nome do Curso': 'informática', 'duração': 'dois anos'}
    ]
  };
  var cursos = mapaCursos['Cursos'] as List;
  for (var curso in cursos) {
    print(
        'o curso de ${curso['nome do Curso']} tem a duração de ${curso['duração']}');
  }
}
