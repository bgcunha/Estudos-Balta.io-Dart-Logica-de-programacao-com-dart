import 'dart:io';

List<Map<String, dynamic>> Cadastros = [];
// ignore: always_declare_return_types
mapsCadastro() async {
  var finalizar = false;

  var opcoes = <String>['1 - Cadastrar', '2 - Imprimir', '3 - Sair'];

  while (!finalizar) {
    print('=======Escolha uma opção=======');
    print(opcoes);
    var opcao = stdin.readLineSync().toString();

    if (opcao == '1') {
      Cadastrar();
      LimparTela();
    } else if (opcao == '2') {
      Imprimir();
    } else if (opcao == '3') {
      print('=======FINALIZADO=======');
      finalizar = true;
    } else {
      print('Opção inválida.');
    }
  }
}

// ignore: always_declare_return_types
Imprimir() async {
  LimparTela();
  for (var item in Cadastros) {
    print(item);
  }
}

// ignore: always_declare_return_types
Cadastrar() async {
  LimparTela();
  var cadastro = <String, dynamic>{};

  print('*****Cadastro*****');
  print('\n');
  print('===Digite o nome');
  cadastro['nome'] = stdin.readLineSync();

  print('\n');
  print('===Digite a idade');
  cadastro['idade'] = stdin.readLineSync();

  print('\n');
  print('===Digite cidade');
  cadastro['cidade'] = stdin.readLineSync();

  print('\n');
  print('===Digite o Estado');
  cadastro['estado'] = stdin.readLineSync();

  Cadastros.add(cadastro);
}

// ignore: always_declare_return_types
LimparTela() async {
  //Limpar terminal CLS
  print('\x1B[2J\x1B[0;0H');
}
