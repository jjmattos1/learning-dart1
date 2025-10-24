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

void ex4() {

  int age,countryInt = 0;

  stdout.writeln("\nExercício 4 -  Idade mínima para dirigir carros em diferentes países\n");
  
  do {
    stdout.write("Digite a sua idade: ");
    age = int.parse(stdin.readLineSync()!);

    if (age <= 0) {
      stdout.writeln("\nIdade inválida! Tente novamente...\n");
    }
  } while (age <= 0);

  do {
    stdout.write("Digite o número do seu país (1 Brasil, 2 EUA e 3 Japão): ");
    countryInt = int.parse(stdin.readLineSync()!);
    stdout.write("\n");

    if (countryInt == 1) {
    if (age >= 18) {
      stdout.writeln("Você pode dirigir no Brasil!");
    } else {
      stdout.writeln("Você não pode dirigir no Brasil!");
    }
  } else if (countryInt == 2 ) {
      if (age >= 16) {
        stdout.writeln("Você pode dirigir nos EUA!");
      } else {
        stdout.writeln("Você não pode dirigir nos EUA!");
      }
      }
    else if (countryInt == 3) {
      if (age >= 18) {
        stdout.writeln("Você pode dirigir no Japão!");
      } else {
        stdout.writeln("Você não pode dirigir no Japão!");
      }
    } else {
      stdout.writeln("País inválido!\n");
    }

  } while (countryInt != 1 && countryInt != 2 && countryInt != 3);

    stdout.write("\nPressione qualquer tecla para encerrar...");
    stdin.readLineSync();

  } 
  
  print("=== xxx ===");

ex4();

} 