import 'dart:io';

// ignore: always_declare_return_types
IMC() async {
  print('*****CALCULO DE IMC*****');

  print('Informe o peso: ');
  dynamic txtPeso = stdin.readLineSync();
  var peso = double.parse(txtPeso);

  print('Informe Altura:');
  dynamic txtAltura = stdin.readLineSync();
  var altura = double.parse(txtAltura);

  var IMC = GetIMC(peso, altura);

  ImprimirResultado(IMC);
}

double GetIMC(double peso, double altura) {
  var IMC = peso / (altura * altura);

  return IMC;
}

// ignore: always_declare_return_types
ImprimirResultado(double resultadoIMC) async {
  print('===========================');

  if (resultadoIMC < 18.5) {
    print('Abaixo do peso');
  } else if (resultadoIMC > 18.4 && resultadoIMC < 25) {
    print('Peso Normal');
  } else if (resultadoIMC > 24.9 && resultadoIMC < 30) {
    print('Sobrepeso');
  } else if (resultadoIMC > 29.9 && resultadoIMC < 35) {
    print('Obesidade grau 1');
  } else if (resultadoIMC > 34.9 && resultadoIMC < 39) {
    print('Obesidade grau 2');
  } else {
    print('Obesidade grau 3');
  }
}
