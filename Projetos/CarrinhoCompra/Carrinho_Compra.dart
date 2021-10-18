import 'dart:io';

List<String> produtos = [];

main() {
  bool condicao = true;

  while (condicao) {
    print("==== ADICIONE UM PRODUTO ====");
    String texto = stdin.readLineSync().toString();

    if (texto != "") {
      if (texto.toLowerCase() == "imprimir") {
        Imprimir();
        print("\n");
      } else if (texto.toLowerCase() == "remover") {
        Remover();
      } else if (texto.toLowerCase() != "sair") {
        Adicionar(texto);
        LimparTela();
      } else {
        LimparTela();
        condicao = false;
        print("==== TERMINOU O PROGRAMA ====");
      }
    } else {
      LimparTela();
    }
  }
}

LimparTela() {
  //Limpar terminal CLS
  print("\x1B[2J\x1B[0;0H");
}

Imprimir() {
  for (var i = 0; i < produtos.length; i++) {
    print("Item: ${i + 1} - ${produtos[i]}");
  }
}

Adicionar(texto) {
  produtos.add(texto);
}

Remover() {
  if (produtos.length > 0) {
    print("==== Qual item deseja remover?");
    Imprimir();

    int item = int.parse(stdin.readLineSync().toString()) - 1;

    produtos.removeAt(item);
    print("==== Item removido.");
    Imprimir();
  } else {
    print("==== Não existe item no carrinho.");
  }
}
