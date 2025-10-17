import 'dart:io';

void calcV2() {

print("Calculadora V2, pressione qualquer tecla para proseguir... \n\n");
stdin.readLineSync();

double numeroUmV2 = 0;
String operacaoV2 = '';
double numeroDoisV2 = 0;
double resultado = 0;

void soma() {
  resultado = numeroUmV2 + numeroDoisV2;
}
void subtracao() {
  resultado = numeroUmV2 - numeroDoisV2;
}
void multiplicacao() {
  resultado = numeroUmV2 * numeroDoisV2;
}
void divisao() {
  resultado = numeroUmV2 / numeroDoisV2;
}

void calcular() {

switch (operacaoV2) {

  case '+':
    soma();
    break;
  
  case '-':
    subtracao();
    break;
  
  case '*':
    multiplicacao();
    break;
  
  case '/':
    divisao();
    break;

  default:
    print('Opção inválida!');
    break;

}

}

stdout.write('Digite o primeiro número: ');
numeroUmV2 = double.parse(stdin.readLineSync()!);

stdout.write('Escolha a operação (+, -, *, /):');
operacaoV2 = (stdin.readLineSync()!);

stdout.write('Digite o segundo número: ');
numeroDoisV2 = double.parse(stdin.readLineSync()!);

calcular();

print('\nO resultado é: $resultado\n');

}