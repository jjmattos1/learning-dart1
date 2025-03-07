import 'dart:io';

void main() {
  //print('Olá mundo!\n\n');
  // Paradigmas de linguage de programação: https://blog.geekhunter.com.br/quais-sao-os-paradigmas-de-programacao/
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  print("bool isMadura ");
  print(isMadura);
  print("");

  // Clean code, DRY. Dont Repeat Yourself. Evite repetir código!
  // Pensar sempre em criar funções caixa preta, para que elas mesmas resolvam da melhor forma o problema
  // Exemplo de função caixa preta:
/*   int idade;
  if (idade >= 18) {
    return true;
  } else {
    return false;
  } */

  // colocar a palavra void antes de criar a função é algo opcional, pois mesmo não colocando, o Dart entende de que aquela função é void
  
  // Sobre argumentos
  // 1 - Posicionais obrigatórios = obedecem a ordem como os argumentos são passados
  // 2 - Nomeados opcionais = para usar, se coloca chaves {} entre os argumentos opcionais
  // 3 - Parâmetros com "Padrão" = basta atribuir um valor padrão no argumento, exemplo argumento cor ({String cor = "sem cor"})
  // 4 - Modificador "required"
  // d

    //mostrarMadura("Uva", 40, cor: "Roxa");

    // cont...

    int quantosDias = funcQuantosDiasMadura(diasDesdeColheita);
    print("Dias para amadurecer ");
    print(quantosDias);

    print("\n\n");

    print("showFruitInfo method... ");
    //showFruitInfo(nome: "Laranja", peso: 100.2, diasDesdeColheita: 20, diasAmadurecer: 30);
    //
    toString(nome: "Laranja", peso: 100.2, diasDesdeColheita: 20);

}

String toString(
    {required String nome,
    required double peso,
    required diasDesdeColheita,
    int diasParaMadura = 30,
    bool? isMadura}) {
  if (isMadura == null) {
    isMadura = diasDesdeColheita >= diasParaMadura;
  }

  String maduraString = "";
  if (isMadura != null && !isMadura) {
    maduraString = "não ";
  }

  String result =
      "A $nome pesa $peso gramas! Ela foi colhida há  $diasDesdeColheita dias e precisa de  $diasParaMadura dias para amadurecer, logo, a $nome ${maduraString}está madura!";

  return result;
}

// A Laranja pesa 98 gramas! Ela foi colhida há 30 dias e precisa de 20 para amadurecer, logo, a Laranja está madura!
String showFruitInfo({required nome, required double peso, required int diasDesdeColheita, required int diasAmadurecer}){
  bool isMadura;
  isMadura = diasDesdeColheita >= diasAmadurecer;
  
  String msg = "A $nome pesa $peso! Ela foi colhida há $diasDesdeColheita e precisa de $diasAmadurecer para amadurecer, logo, a $nome está madura? $isMadura";
  
  return msg;
}

int funcQuantosDiasMadura(int dias){
    int diasParaMadura = 30;
    int quantosDiasFaltam = diasParaMadura - dias;
    return quantosDiasFaltam;
}

mostrarMadura(String nome, int dias, {required String cor}) {
    if (dias >= 30) {
      print("A $nome está madura.");
    }
    else {
      print("A $nome não está madura.");
    }

    if (cor != null) {
      print("A $nome é $cor.");
    }
  }

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
