import 'dart:io';

main() {
  CalcularIMC()();
}

CalcularIMC() {
  print("*****CALCULO DE IMC*****");

  print("Informe o peso: ");
  dynamic txtPeso = stdin.readLineSync();
  double peso = double.parse(txtPeso);

  print("Informe Altura:");
  dynamic txtAltura = stdin.readLineSync();
  double altura = double.parse(txtAltura);

  double IMC = GetIMC(peso, altura);

  ImprimirResultado(IMC);
}

double GetIMC(double peso, double altura) {
  double IMC = peso / (altura * altura);

  return IMC;
}

ImprimirResultado(double resultadoIMC) {
  print("===========================");

  if (resultadoIMC < 18.5) {
    print("Abaixo do peso");
  } else if (resultadoIMC > 18.4 && resultadoIMC < 25) {
    print("Peso Normal");
  } else if (resultadoIMC > 24.9 && resultadoIMC < 30) {
    print("Sobrepeso");
  } else if (resultadoIMC > 29.9 && resultadoIMC < 35) {
    print("Obesidade grau 1");
  } else if (resultadoIMC > 34.9 && resultadoIMC < 39) {
    print("Obesidade grau 2");
  } else {
    print("Obesidade grau 3");
  }
}
