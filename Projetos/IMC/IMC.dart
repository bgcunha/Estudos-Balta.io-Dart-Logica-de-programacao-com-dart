import 'dart:io';

main() {
  print("*****CALCULO DE IMC*****");
  print("Informe o peso: ");
  dynamic txtPeso = stdin.readLineSync();
  var peso = double.parse(txtPeso);

  print("Informe Altura:");
  dynamic txtAltura = stdin.readLineSync();
  var altura = double.parse(txtAltura);

  var resultadoIMC = peso / (altura * altura);

  if (resultadoIMC < 18.6) {
    print("Abaixo do peso");
  } else if (resultadoIMC > 18.4 && resultadoIMC < 25) {
    print("Peso Normal");
  } else if (resultadoIMC > 24.8 && resultadoIMC < 30) {
    print("Sobrepeso");
  } else if (resultadoIMC > 29.8 && resultadoIMC < 35) {
    print("Obesidade grau 1");
  } else if (resultadoIMC > 34.8 && resultadoIMC < 39) {
    print("Obesidade grau 2");
  } else {
    print("Obesidade grau 3");
  }
}
