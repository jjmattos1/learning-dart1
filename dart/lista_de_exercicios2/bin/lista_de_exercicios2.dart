import 'dart:developer';
import 'dart:io';

void main() {
  stdout.write('Hello world new!\n\n');

String opWhile = '';

  do {
     
    stdout.write('Lista de exercícios 2 - Selecione uma das opções abaixo!\n\n');
    print('1) Calculando a idade para carteira de motorista');
    print('2) Retornando meses do ano');
    print('3) Implementnado a verificação de saldo');
    print('4) Verificando a maioridade em diferentes paises');


    stdout.write('Digite a sua opção: ');
    opWhile = stdin.readLineSync()!;

    print('Digite sair para finalizar o programa!\n');

    switch (opWhile) {
      case '1':
        ageCalc();
        break;
      case '2':
        yearMonth();
        break;
      case '3':
        balanceCheck();
        break;
      case '4':
        countryAge();
        break;

      default:
        stdout.write('Opção incorreta!');
        break;
    }

  } while (opWhile != 'sair');
  
  print('Programa finalizado.\n');
}

void ageCalc() {
  // code here;
  stdout.write('Digite a sua idade: ');
  double age = double.parse(stdin.readLineSync()!);

  if (age > 18) {
    print('Parabéns, você pode dirigir!');
  }
  else {
    print('Uma pena, você ainda não pode dirigir!');
  }
  return;
}

void yearMonth() {
  // code here;
  stdout.write('Digite o número do mês: ');
  int month = int.parse(stdin.readLineSync()!);
  return;
}

void balanceCheck() {
  // code here;
  return;
}

void countryAge() {
  // code here;
  return;
}

