import 'dart:developer';
import 'dart:io';

void main() {
  int number;
  String? input;
  do {
    print("\nEscolha um exercício (digite 'sair' para terminar):\n");
    
    // Nos itens 1, 2 e 3, criar função para que não seja possível ser escolhido o número zero para ser utilizado na quantidade pedida dessas opoções.
    
    /*

    1) Calculando o dobro de um número
    
    2) Descobrindo a média de idades
    
    3) Escrevendo a ficha de participante
    
    4) Calculando o salário do freela - Você foi contratado para um trabalho freelance. Crie um programa que lê as horas trabalhadas e calcula o salário líquido, considerando: A empresa paga 50 reais por hora trabalhada; O desconto do salário é de 5% e deve ser subtraído do salário bruto.
    
    5) Consertando erros em um programa

    6) Identificando e corrigindo tipos no Dart
    
    7) Refatorando o código do clube de benefícios com função

    Se você resolveu o exercício anterior, agora refatore (modifique) o código, colocando a funcionalidade de subtração de pontos dentro de uma função.

    8) Implementando um programa de cupons

    Escreva um programa que informa quantos cupons um cliente ganhou ao fazer compras no mercado No Precinho. A regra da promoção é: a cada 50 reais gastos por compra, a pessoa recebe um cupom. O programa deve:

    Capturar a entrada com o valor gasto;
    Exibir mensagem de quantos cupons foram ganhos.

    */

    print("1. Dobro de um número");
    print("2. Média de idades");
    print("3. Ficha de participante");
    print("4. Salário do freela");
    print("5. Consertando erros em um programa");
    print("6. Identificando e corrigindo tipos no Dart");
    print("7. Refatorando o código do clube de benefícios com função");
    print("8. Implementando um programa de cupons");

    stdout.write("\nOpção: ");
    input = stdin.readLineSync();

    if (input != null && input != 'sair') {
      stdout.write("\nDigite um número: ");
      
      switch (input) {
        
        case '1':
          print("\n\nVocê escolheu a opção 1.\n");
          stdout.write("Digite um número: ");
          number = int.parse(stdin.readLineSync()!);
          stdout.write("\nO dobro do número $number é ${number * 2}.");
          print("\n\nPressione qualquer tecla para voltar ao menu!");
          stdin.readLineSync();
          break;
        
        case '2':
          int ageQuantity, i;
          print("\n\nVocê escolheu a opção 2.\n");
          stdout.write("Qual é a quantidade de idades que você deseja efetuar a média? ");
          ageQuantity = int.parse(stdin.readLineSync()!);
          List<int> ages = [];
          int ageSum = 0;
          for (i = 0 ; i < ageQuantity ; i++) { 
            stdout.write("Digite a ${i+1}ª idade: ");
            int age = int.parse(stdin.readLineSync()!);
            ages.add(age);
            ageSum += age;
          };
          double ageAverage = ageSum / ageQuantity;
          print("As idades digitadas foram: $ages");
          print("A média das idades é: $ageAverage");
          print("\nPressione qualquer tecla para voltar ao menu!");
          stdin.readLineSync();
          break;

          case '3':
          int folksQuantity, i;
          print("\n\nVocê escolheu a opção 3.\n");
          stdout.write("Qual é a quantidade de participantes que você deseja cadastrar? ");
          folksQuantity = int.parse(stdin.readLineSync()!);
          List<dynamic> folks = [];
          for (i = 0 ; i < folksQuantity ; i++) {
            stdout.write("Digite o nome do participante ${i+1}: ");
            String name = stdin.readLineSync()!;
            folks.add(name);
            stdout.write("Digite a idade do participante ${i+1}: ");
            int age = int.parse(stdin.readLineSync()!);
            folks.add(age);
            stdout.write("Digite a profissão do participante ${i+1}: ");
            String profession = stdin.readLineSync()!;
            folks.add(profession);
            print("");
          };
          print("Os participantes cadastrados foram: $folks");
          print("\nPressione qualquer tecla para voltar ao menu!");
          stdin.readLineSync();
          break;

          case '4':
          print("\n\nVocê escolheu a opção 4.\n");
          stdout.write("Digite a quantidade de horas trabalhadas: ");
          int hours = int.parse(stdin.readLineSync()!);
          double salaryTotal = hours * 50;
          double salaryWithTax = salaryTotal * 0.95;
          print("O salário bruto é: $salaryTotal");
          print("O salário líquido é: $salaryWithTax");
          print("\nPressione qualquer tecla para voltar ao menu!");
          stdin.readLineSync();
          break;

          case '5':
          print("\n\nVocê escolheu a opção 5.\n");
          stdout.write("Corrigir o código abaixo (original está comentado):\n");
          stdout.write("");

         
          /*

          Você está trabalhando em um programa de banco, que faz três ações:

          Mostrar o saldo bancário do usuário;
          Permitir que o usuário faça uma transferência pix (de forma simplificada);
          Subtrair o valor do pix do valor de saldo.
          No entanto, o código possui erros. Analise-o com atenção:

          import 'dart:io';

          string saldo = 1000.0; // Saldo inicial em reais

          void main() {
            print('Boas-vindas ao seu banco digital!')
            print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}')

            print('Digite o valor do Pix que deseja realizar:');
            double valorPix = double.parse(stdin.readLineSync());

            saldo -= valorPix;

            print('Pix realizado com sucesso!')
            print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
          }

          */

          double saldo = 1000.0; // Saldo inicial em reais
          print('Boas-vindas ao seu banco digital!');
          print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
          print('Digite o valor do Pix que deseja realizar:');
          double valorPix = double.parse(stdin.readLineSync()!);
          saldo -= valorPix;
          print('Pix realizado com sucesso!');
          print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
          print("\nPressione qualquer tecla para voltar ao menu!");
          stdin.readLineSync();
          break;

          case '6':
          print("\n\nVocê escolheu a opção 6.\n");
          stdout.write("");
          double pontosIniciais = 100;
          double pontosRetirados;

          //print("Você tem $pontos pontos.");
          print("Você tem $pontosIniciais pontos.");
          stdout.write("Quantos pontos você gostaria de resgatar? ");
          pontosRetirados = double.parse(stdin.readLineSync()!);
          
          double pontosRestantes = pontosIniciais - pontosRetirados;

          print("Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes");
          print("\nPressione qualquer tecla para voltar ao menu!");
          stdin.readLineSync();
          break;

          case '7':
          print("\n\nVocê escolheu a opção 7. Refatorando o código anterior...");
          stdout.write("\n");
          double pontosIniciais = 100;
          double pontosRetirados;

          stdout.write("Você tem $pontosIniciais pontos. Quantos pontos você gostaria de resgatar? ");
          pontosRetirados = double.parse(stdin.readLineSync()!);
          
          // double pontosRestantes = pontosIniciais - pontosRetirados;

          double? pontosRestantesFora;
          void resgatePontos() {
            double pontosRestantes = pontosIniciais - pontosRetirados;
            pontosRestantesFora = pontosRestantes;
            return;

          }

          resgatePontos();

          print("\nVocê resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantesFora");

          print("\nPressione qualquer tecla para voltar ao menu!");
          stdin.readLineSync();
          break;

          case '8':
          print("\n\nVocê escolheu a opção 8.");
          print("\nSeja bem-vindo ao mercado No Precinho!\n");
          stdout.write("Para que seja calculado quantos cupons você ganhou, digite o valor de sua compra: ");
          double? valorGasto;
          valorGasto = double.parse(stdin.readLineSync()!);

          if (valorGasto > 0) {
            int tickets = (valorGasto / 50).floor();
            print("Parabéns! Você ganhou $tickets cupons.");
          } 
          else if (valorGasto == 0) {
            print("Você precisa efetuar alguma compra!");
          }
          else {
            print("Você precisa efetuar alguma compra!");
          }

          print("\nPressione qualquer tecla para voltar ao menu!");
          stdin.readLineSync();
          break;

        default:
          print("Opção inválida.");
          break;
      }
    }
  } while (input != 'sair');
  print("\nPrograma finalizado.\n");

  }
