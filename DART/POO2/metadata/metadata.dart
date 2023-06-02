import 'dart:mirrors';

import 'fazer.dart';
import 'pessoameta.dart';

void main(List<String> args) {
  final p1 = PessoaMeta();
  var instanceMirror = reflect(p1);
  var classMirror = instanceMirror.type;

  classMirror.metadata.forEach(
    (annotation) {
      var instanceAnnotation = annotation.reflectee;
      if (instanceAnnotation is Fazer) {
        print(instanceAnnotation.quem);
        print(instanceAnnotation.oque);
      }
    },
  );
}
