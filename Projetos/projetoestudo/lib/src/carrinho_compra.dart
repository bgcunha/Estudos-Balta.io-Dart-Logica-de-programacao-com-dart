import 'dart:io';

List<String> produtos = [];

// ignore: always_declare_return_types
CarrinhoCompra() async {
  var condicao = true;

  while (condicao) {
    print('==== ADICIONE UM PRODUTO ====');
    var texto = stdin.readLineSync().toString();

    if (texto != '') {
      if (texto.toLowerCase() == 'imprimir') {
        Imprimir();
        print('\n');
      } else if (texto.toLowerCase() == 'remover') {
        Remover();
      } else if (texto.toLowerCase() != 'sair') {
        Adicionar(texto);
        LimparTela();
      } else {
        LimparTela();
        condicao = false;
        print('==== TERMINOU O PROGRAMA ====');
      }
    } else {
      LimparTela();
    }
  }
}

// ignore: always_declare_return_types
LimparTela() async {
  //Limpar terminal CLS
  print('\x1B[2J\x1B[0;0H');
}

// ignore: always_declare_return_types
Imprimir() async {
  for (var i = 0; i < produtos.length; i++) {
    print('Item: ${i + 1} - ${produtos[i]}');
  }
}

// ignore: always_declare_return_types
Adicionar(texto) async {
  produtos.add(texto);
}

// ignore: always_declare_return_types
Remover() async {
  if (produtos.isNotEmpty) {
    print('==== Qual item deseja remover?');
    Imprimir();

    var item = int.parse(stdin.readLineSync().toString()) - 1;

    produtos.removeAt(item);
    print('==== Item removido.');
    Imprimir();
  } else {
    print('==== Não existe item no carrinho.');
  }
}
