import 'dart:io';
import 'ex3_main.dart';

void main() {
  /*
  
  Lista de exercicios

  1) Calculando idade para carteira de motorista

  2) Retornando os meses do ano

  3) Implementando a verificação de saldo

  4) Verificando a maioridade em diferentes paises.

  */

  void ex1() {

  int num1 = 0;

  stdout.writeln("\nDigite o primeiro número: ");
  num1 = int.parse(stdin.readLineSync()!);
  stdout.write("");
  stdout.write("");

  if (num1 < 18) {
    stdout.writeln("\nMenor de idade!");
  } else if (num1 >= 18) {
    stdout.writeln("\nMaior de idade!");
  }
  stdout.writeln("\nPressione qualquer tecla para sair.");
  stdin.readLineSync();

}

//ex1();

void ex2() {

  stdout.writeln("\nExercício 2\n");

  int opMonth = 0;

  stdout.write("Digite o número do mês (1 a 12): ");
  opMonth = int.parse(stdin.readLineSync()!);
  stdout.write("\n");
  
  switch (opMonth) {
    case 1:
      stdout.writeln("Janeiro");
      break;
      
    case 2:
      stdout.writeln("Fevereiro");
      break;

    case 3:
      stdout.writeln("Março");
      break;

    case 4:
      stdout.writeln("Abril");
      break;

    case 5:
      stdout.writeln("Maio");
      break;

    case 6:
      stdout.writeln("Junho");
      break;

    case 7:
      stdout.writeln("Julho");
      break;

    case 8:
      stdout.writeln("Agosto");
      break;

    case 9:
      stdout.writeln("Setembro");
      break;

    case 10:
      stdout.writeln("Outubro");
      break;

    case 11:
      stdout.writeln("Novembro");
      break;

    case 12:
      stdout.writeln("Dezembro");
      break;

    default:
      stdout.writeln("Mês inválido!");
      break;
  }

  stdout.writeln("\nPressione qualquer tecla para sair.");
  stdin.readLineSync();

  }

  //ex2();

void ex3() {

  stdout.writeln("\nExercício 3\n");

  // Now you can call the function you created in the other file.
  runPixTransaction();
}

//ex3();

// falta fazer o exercício 4, verificando a maioridade em diferentes paises.

}
