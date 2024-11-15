class Biografia{
  String nome;
  String txtInicio;
  String txtJogos;
  String txtMysteryHouse;
  String txtRainha;
  List<String> ImgBiografia;

  Biografia({
    required this.nome,
    required this.txtInicio,
    required this.txtJogos,
    required this.txtMysteryHouse,
    required this.txtRainha,
    required this.ImgBiografia,
  });

  // Método para retornar uma lista de jogos
  static List<Biografia> getBiografia() {
    List<Biografia> biografias = [];

    Biografia biografia1 = Biografia(
      nome: "Roberta Williams",
      txtInicio: "Aos seus 19 anos Roberta Williams e seu marido Ken Williams de 18 anos terminavam seus papeis tradicionais sociais da década de 70's. Ken como um experimento programador, ia indo em diferentes empregos e diferentes companhias para trazer a sua família uma boa vida e um ótimo sustento enquanto Roberta ficava em casa mantendo a ordem e cuidando dos dois filhos até que um dia Ken chegou em casa com um computador introduzindo assim Roberta a este mundo tecnológico e criativo.",
      txtJogos: "Com a chegada do computador em casa, Roberta se viu obcecada por uma jogo de ficção interativa chamado Colossal Cave Adventures. ela em si não ligava tanto para tecnologia mas se fissurou no jogo de forma que ignorava as tarefas domesticas e seu próprio filho de apenas 8 meses. Essa obsessão continuou até o momento que sugeriu a Ken a criação de um jogo com atmosfera e temas inspirados nas obras de Agatha Christie, por conta de seu amor pela literatura ainda foi ambiciosa e imaginava um jogo não só com texto mas imagens interativas",
      txtMysteryHouse: "Roberta tinha grandes ideias mas Ken não sabia como colocar em pratica a questão dos gráficos idealizados por Roberta por conta que a tecnologia não era capaz de reproduzir tal atividade. Porém com a chegada do Apple II, viu uma oportunidade de criar esse vasto mundo em seu modo hi-res que juntava imagem e texto. Mesmo com essa tecnologia em mãos ainda não era possível exibir dezenas de imagens na tela, contudo viram a solução no VersaWriter um tablete primitivo que era utilizado para a digitalização de diagramas, a partir na mesa da cozinha Roberta criou os cenários enquanto seu marido criava um software que lia o desenho como um conjunto de vetores para ser colocado em um único disco. Em um Parser, um interprete comum a ficções interativas que reconhecia frases simples, Roberta alimentou o programa com sua historia e suas imagens e assim surgiu o primeiro jogo adventure gráfico percursor de todo genero O Mystery House lançãdo em 1980.",
      txtRainha: "Com o passar do tempo e também com o lançamento de mystery house, Roberta começou a ficar conhecida como a Rainha dos Adventures, após mystery house, Ken e Roberta Fundaram a Sierra On-Line vinda da On-Line Systemns empresa já fundada por Ken meses antes de lançarem Mystery house, Ken abandonou o trabalho e então o casal se mudou para Oakhurst um comunidade rural na Califórnia onde lá sediaram a Sierra que em 1983 já contava com 130 funcionários. Durante esse tempo a Sierra criava ainda mais jogos como King's Quest, Phantasmagoria um jogo de terror feito em CD-ROm sendo um dos primeiros a usar um ser humano como personagem principal e também temos King's Quest IV o primeiro jogo com protagonista feminina tendo mais de 35% a 40% do publico composto por mulheres.",
      ImgBiografia: [
        "img/imagem11.jpeg",
        "img/imagem12.jpg"
      ]
    );
    biografias.add(biografia1);


    return biografias;
  }
}