import 'dart:io';

List<Map<String, dynamic>> Cadastros = [];
main() {
  bool finalizar = false;

  List<String> opcoes = ["1 - Cadastrar", "2 - Imprimir", "3 - Sair"];

  while (!finalizar) {
    print("=======Escolha uma opção=======");
    print(opcoes);
    String opcao = stdin.readLineSync().toString();

    if (opcao == '1') {
      Cadastrar();
      LimparTela();
    } else if (opcao == '2') {
      Imprimir();
    } else if (opcao == '3') {
      print("=======FINALIZADO=======");
      finalizar = true;
    } else {
      print("Opção inválida.");
    }
  }
}

Imprimir() {
  LimparTela();
  for (var item in Cadastros) {
    print(item);
  }
}

Cadastrar() {
  LimparTela();
  Map<String, dynamic> cadastro = {};

  print("*****Cadastro*****");
  print("\n");
  print("===Digite o nome");
  cadastro["nome"] = stdin.readLineSync();

  print("\n");
  print("===Digite a idade");
  cadastro["idade"] = stdin.readLineSync();

  print("\n");
  print("===Digite cidade");
  cadastro["cidade"] = stdin.readLineSync();

  print("\n");
  print("===Digite o Estado");
  cadastro["estado"] = stdin.readLineSync();

  Cadastros.add(cadastro);
}

//Limpar terminal CLS
LimparTela() => print("\x1B[2J\x1B[0;0H");
