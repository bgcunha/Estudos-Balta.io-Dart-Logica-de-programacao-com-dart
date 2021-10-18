import 'dart:io';

// ignore: always_declare_return_types
calculoidade() async {
  print('==== Digite a idade: ==== ');
  dynamic input = stdin.readLineSync();

  var idade = int.parse(input);

  if (idade < 12) {
    print('Criança');
  } else if (idade >= 12 && idade <= 15) {
    print('Adolescente');
  } else if (idade >= 18 && idade <= 50) {
    print('Maior de idade');
  } else {
    print('Melhor Idade');
  }
}
