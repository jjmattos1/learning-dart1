import 'dart:io';

void main() {
  //print('Olá mundo!\n\n');
  // Paradigmas de linguagem de programação: https://blog.geekhunter.com.br/quais-sao-os-paradigmas-de-programacao/

  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 20;
  //bool isMadura = funcEstaMadura(diasDesdeColheita);

  /*
  print("bool isMadura ");
  print(isMadura);
  print(""); */

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

  /*     int quantosDias = funcQuantosDiasMadura(diasDesdeColheita);
    print("Dias para amadurecer ");
    print(quantosDias);

    print("\n\n"); */

  /* print("toString method... ");
    print(toString(nome: "Laranja", peso: 100.2, diasDesdeColheita: 20));

    print("\n\nshowFruitInfo method...");
    print(showFruitInfo(nome: "Laranja", peso: 100.2, diasDesdeColheita: 20, diasAmadurecer: 30)); */

  // começo sobre classes no Dart

  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  //Fruta fruta02 = Fruta.nomeada(nome: "Uva", peso: 60.5, cor: "Roxa", sabor: "Doce", diasDesdeColheita: 40);

  // print(showFruitInfo(nome: "Banana", peso: 150, diasDesdeColheita: 20, diasAmadurecer: 30));
  // print("");
  // print("${fruta01.nome} é $fruta01");
  // print("");
  // print("${fruta02.cor} é $fruta02");
  // print(fruta02.estaMadura(20));

  Alimento mandioca1 = Alimento("mandioca", "marrom", 500);
  // print('${mandioca1.nome} text ${mandioca1.cor}');
  // print(fruta02.cor);

  Legumes mandioca2 = Legumes("Macaxeira", 1200, "Marrom", true);
  Fruta banana2 = Fruta("Banana", 120, "Amarela", "Doce", 15);
  Nozes macadamia1 = Nozes("Macadâmia", 2, 'Branco Amarelado', 'Doce', 20, 35);
  Citricas limao1 = Citricas('Limão', 5, "Verde", 'Azedo', 5, 9);

  // mandioca2.printAlimento();
  // banana2.printAlimento();
  // macadamia1.printAlimento();
  // limao1.printAlimento();

  Citricas limao2 = Citricas.nomeada(
    nome: "Limão",
    peso: 5,
    cor: "Verde",
    sabor: "Azedo",
    diasDesdeColheita: 5,
    nivelAzedo: 9,
  );

  banana2.separarIngredientes();
  banana2.printAlimento();
  // multi line string test
  print("Pensar em uma maneira de herdar os metodos da classe Bolo, na classe fruta."
   """
 E não o inverso como acontece atualmente!
Nova linha aqui
 """);
  banana2.fazerMassa();
  banana2.assar();

  // escrever testes com classses abstratas e polimorfismo

  // usando o extends na classe, permite você configurar ela para receber os parametros de outra classe como herança
  // desta forma, para inicializar o constutor desa classe, basta adicionar ao final do metodo
  // construtor o codigo : super(argumetnos que inicializam o construtor em questão passar aqui no parenteses).
  // E, lembrando, de colocar o tipo da variável no argumento do construtor, antes do super.

  // para deixar varias linhas selecionadas como comentario, apertar ctrl+k+c!
  // EOF
  // relembrando.. shift+tab remove a identação na linha, ou nas linhas selecionadas. E pressionando somente o tab
  // coloca um ponto de indentação na dada linha(s) selecionada(s).
  // Auto indentação vs code Windows é 'shift + alt + f". No Ubuntu a combinação é "ctr + shit + I".
}

abstract class Bolo implements Alimento {
  // int? tempoCozimentoBolo;
  void separarIngredientes() {
    print("Separar a(o) $nome ($peso gramas), farinha, leite, ovos e açucar!\n");
  }
  void fazerMassa() {
    print("Misturar os ingredientes até todos ficarem homogêneos!");
  }
  void assar() {
    print("Depois da massa estar homogenea, levar ao forno por $tempoCozimentoBolo minutos!");
  }
  
}

class Alimento {
  String nome;
  double peso;
  String cor;
  int? tempoCozimentoBolo;
  Alimento(this.nome, this.cor, this.peso);

  void printAlimento() {
    print('\nEste(a) $nome pesa $peso gramas e é $cor.\n');
  }
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;
  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
      "A fruta $nome foi colhida a $diasDesdeColheita dias. Como ela precisa de $diasParaMadura dias para amadurecer, ela está madura? $isMadura.",
    );
  }

  Fruta(
    String nome,
    double peso,
    String cor,
    this.sabor,
    this.diasDesdeColheita, {
    this.isMadura,
  }) : super(nome, cor, peso);

  void fazerSuco() {
    print('Você fez um ótimo suco $nome');
  }
  
  // @override
  // int? tempoCozimentoBolo;
  
  @override
  void assar() {
    // TODO: implement assar
  }
  
  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }
  
  @override
  void separarIngredientes() {
    print("\nSeparar a farinha, leite, fermento e ovos!");
}

// Fruta.nomeada({required this.nome, required this.peso, required this.cor, required this.sabor, required this.diasDesdeColheita});

/*  Fruta.minusculas(this.nome, this.cor) {
    nome = nome.toLowerCase();
    cor = cor.toLowerCase();
    } */
// finalizando testes aula 03...
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(
    String nome,
    double peso,
    String cor,
    String sabor,
    int diasDesdeColheita,
    this.nivelAzedo,
  ) : super(nome, peso, cor, sabor, diasDesdeColheita);

  Citricas.nomeada({
    required String nome,
    required double peso,
    required String cor,
    required String sabor,
    required int diasDesdeColheita,
    required this.nivelAzedo,
  }) : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe refrigerante de $nome');
    } else {
      print('Não existe refri de $nome');
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;
  Nozes(
    String nome,
    double peso,
    String cor,
    String sabor,
    int diasDesdeColheita,
    this.porcentagemOleoNatural,
  ) : super(nome, peso, cor, sabor, diasDesdeColheita);
}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;
  //double peso;
  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
    : super(nome, cor, peso);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o $nome está cozinhando!');
    } else {
      print('Nem precisa cozinhar!');
    }
  }
}

String toString({
  required String nome,
  required double peso,
  required diasDesdeColheita,
  int diasParaMadura = 30,
  bool? isMadura,
}) {
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
String showFruitInfo({
  required nome,
  required double peso,
  required int diasDesdeColheita,
  required int diasAmadurecer,
}) {
  bool isMadura;
  isMadura = diasDesdeColheita >= diasAmadurecer;

  String msg =
      "A $nome pesa $peso! Ela foi colhida há $diasDesdeColheita e precisa de $diasAmadurecer para amadurecer, logo, a $nome está madura? $isMadura";

  return msg;
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

mostrarMadura(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
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
