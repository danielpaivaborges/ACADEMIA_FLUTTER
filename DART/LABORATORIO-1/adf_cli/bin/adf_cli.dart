import 'package:args/command_runner.dart';

void main(List<String> args) {
  //implementando o command runner
  CommandRunner('adf_cli', 'adf_cli2')
    ..addCommand(ExemploCommand())
    ..run(args);
  //para utilizar: dart run adf_cli.dart exemplo -t nomequalquer -p
}

//PARA UTILIZAR O COMMAND RUNNER É NECESSÁRIO IMPLEMENTAR

class ExemploCommand extends Command {
  @override
  String get description => "Exemplo de comando";

  @override
  String get name => "exemplo";

  @override
  void run() {
    print("posso executar qualquer coisa aqui....");

    if (argResults?['template'] != null) {
      print(argResults?['template']);
    }
    if (argResults?['positivo']) {
      print("tudo ok e positivado");
    }
  }

  //opcionalmente criando opções para o parse

  ExemploCommand() {
    argParser.addOption('template',
        abbr: 't', help: "Template de criação do projeto");
    argParser.addFlag('positivo', abbr: 'p');
  }
}
