// Alura Dart: trabalhando com a sintaxe e configuração de projeto, seção 2 item 10.
import 'dart:io';
void main() {

String opMenuText = 'Selecione alguma das opções abaixo!\n\n'
  '1 - Calcular o dobro de um número\n'
  '2 - Descobrindo a média de idades\n'
  '3 - Escrevendo a ficha de participante\n'
  '4 - Calculando o salário do freela\n'
  '5 - Consertando erros em um programa\n'
  '6 - Identificando e corrigindo tipos no Dart\n'
  '7 - Refatorando o código do clube de benefícios com função\n'
  '8 - Implementando um programa de cupons\n'
  ;
  
  print('$opMenuText\n');
  //print('Selecione a opção: ');
  stdout.write('Selecione a opção: ');
  String? userOp = stdin.readLineSync();
  int? selectedOp = int.tryParse(userOp ?? '');
  print('');

switch (selectedOp) {
  case 1:
    print("1) Calcular o dobro de um número");
    print("\n");
    // code here
    break;
  case 2:
    print("2) Descobrindo a média de idades");
    print("\n");
    // code here
    break;
  case 3:
    print("3) Escrevendo a ficha de participante");
    print("\n");
    // code here
    break;
  case 4:
    print("4) Calculando o salário do freela");
    print("\n");
    // code here
    break;
  case 5:
    print("5) Consertando erros em um programa");
    print ("\n");
    // code here
    break;
  case 6:
    print("6) Identificando e corrigindo tipos no Dart");
    print("\n");
    // code here
    break;
  case 7:
    print("7) Refatorando o código do clube de benefícios com função");
    print("\n");
    // code here
    break;
  case 8:
    print("8) Implementando um programa de cupons");
    print("\n");
    // code here
    break;
  default:
    print("Opção inválida!");
}



}

