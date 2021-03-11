import 'dart:math';

class IBMProvider {
  final int height, weight;
  final double result;

  IBMProvider({this.height, this.weight})
      : result = weight / pow(height / 100, 2);

  String status() {
    if (result < 18)
      return "PESO BAIXO";
    else if (result >= 18 && result < 25)
      return "NORMAL";
    else if (result >= 25 && result < 30)
      return "SOBREPESO";
    else
      return "OBESO";
  }

  String interpretation() {
    if (result < 18)
      return "Peso abaixo do normal.\nBusque acompanhamento médico.";
    else if (result >= 18 && result < 25)
      return "Parabéns — você está em seu peso normal!";
    else if (result >= 25 && result < 30)
      return "Você está acima de seu peso.\nBusque acompanhamento médico.";
    else if (result >= 30 && result < 35)
      return "Você está com obesidade grau I.\nBusque acompanhamento médico.";
    else if (result >= 35 && result < 40)
      return "Você está com obesidade grau II.\nBusque acompanhamento médico.";
    else if (result >= 40 && result < 50)
      return "Você está com obesidade grau III.\nBusque acompanhamento médico.";
    else
      return "Você está com obesidade grau IV.\nBusque acompanhamento médico.";
  }
}
