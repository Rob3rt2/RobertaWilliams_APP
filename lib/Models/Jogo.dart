class Jogo {
  String nome;
  String capaImg;
  String sinopse;
  String enredo;
  String mecanica;
  List<String> gameplayImg;

  // Construtor da classe
  Jogo({
    required this.nome,
    required this.capaImg,
    required this.sinopse,
    required this.enredo,
    required this.mecanica,
    required this.gameplayImg,
  });

  // Método para retornar uma lista de jogos
  static List<Jogo> getJogo() {
    List<Jogo> jogos = [];

    Jogo jogo1 = Jogo(
      nome: "Mystery House",
      capaImg: "img/capa1.png",
      sinopse: "Mystery house se passa em uma mansão antiga onde o jogador esta preso com 7 pessoas, com o tempo as pessoas vão morrendo uma a uma e o jogador tem a responsabilidade de procurar as pistas e descobrir quem é o assassino antes que o mesmo seja mais uma vitima.",
      enredo: "Inicialmente, o jogador deve fazer uma busca na casa para encontrar um esconderijo de joias. No entanto, os cadáveres (de outras pessoas) começam a aparecer. Torna-se óbvio que há um assassino à solta na casa, e o jogador deve descobrir quem é ou se tornar a próxima vítima.",
      mecanica: "O Jogo tem comandos simples de Look, go, get, north, east e por ai vai. Com isso também as pistas eram mostradas em diferentes estilos, como escrita ou alguma pista sutil, dando mais imersão ao jogador apesar da época e limitação do jogo. O jogador tem a liberdade de explorar grande parte da casa me busca de pistas do assassino, apesar de ter mecânicas simples e bem básicas o jogo pode ser bem divertido e atrativo para amantes de jogos mais clássicos e de terror",
      gameplayImg: [
        "https://i0.wp.com/upload.wikimedia.org/wikipedia/commons/d/d4/Mystery_House_-_Apple_II_-_2.png",
        "img/gameplay1.png",
        "img/gameplay2.png"
      ]
    );
    jogos.add(jogo1);



    Jogo jogo2 = Jogo(
      nome: "King's Quest",
      capaImg: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/SierraOnLine-Box-KingsQuest1.jpg/1200px-SierraOnLine-Box-KingsQuest1.jpg",
      sinopse: "O velho Rei Graham reflete sobre sua vida de aventuras com sua neta, Gwendolyn, levando os jogadores de volta à sua juventude e sua missão para se tornar um cavaleiro de Daventry na guarda real do Rei Edward.",
      enredo: "Com base na historia também criada por Roberta Williams, The Wizard and the Princess: Adventure in Serenia. A historia do jogo é simples, o jogador tem objetivo de salvar o reino de Daventry e resgatar a princesa Dahlia.",
      mecanica: "Diferente dos primeiros jogos, King Quest tem mais de 16 cores na tela, deixando o jogo cada vez mais detalhado, além de animações mostrando o resultado das ações do jogador. Como mecanica principal o jogo continha comandos simples para realizarem suas ações como nos jogos antigos, porém, desta vez com mais detalhes e animações para resolver os quebra-cabeças.",
      gameplayImg: [
        "img/imagem4.png",
        "img/imagem3.jpeg",
        "img/imagem5.png"
      ]
    );
    jogos.add(jogo2);



    Jogo jogo3 = Jogo(
      nome: "Phantasmagoria",
      capaImg: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Sierra-Phantasmagoria.jpg/1200px-Sierra-Phantasmagoria.jpg",
      sinopse: "Phantasmagoria é um jogo de CD-ROM que foi lançado durante a explosão dos jogos de videos interavos sendo bem notorio por ser um dos primeiros a usar um ser humano como personagem principal que pode ser visto a todo momento. Além de abordar temas que a anos atrás não se era comum pois se tratava de algo bem delicado com, relacionamento abusivo, estupro, violência domestica.",
      enredo: "O A historia se passa nos anos 80, protagonizado por um escritora bem sucedida chama Adrienne que esta de mudança junto de seu marido para uma grande casa em New England onde viveu um antigo magico e suas esposas. Adrienne andando pela casa um dia fazendo algumas mudanças e investigando antigos locais da casa acaba descobrindo um segredo e libertando uma maldição terrível que aos poucos ia deixando seu marido Don cada vez mais violento. O jogador tem o objetivo de investigar a casa descobrindo documentos e objetos espalhados pela casa deixados por antigos moradores para resolver o problema da maldição.",
      mecanica: "O jogo oferece as mecanicas de interação por comandos simples e por cliques em determinados lugares. O jogador tem o objetivo de ir encontrando os relatos dos antigos moradores por objetos, documentos e outros elementos espalhados pelo jogo. Os ambientes transmitem um ambiente domestico porém em certos momentos se torna desconfortável e incomodo por conta de toda energia de terror criada por meio dos relatos e outras situações que ocorrem com a protagonista.",
      gameplayImg: [
        "https://upload.wikimedia.org/wikipedia/en/thumb/c/c8/Phantasmagoria_gameplay_screenshot.png/280px-Phantasmagoria_gameplay_screenshot.png",
        "img/imagem6.png",
        "img/imagem7.jpeg"
      ]
    );
    jogos.add(jogo3);



    Jogo jogo4 = Jogo(
      nome: "King's Quest IV",
      capaImg: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/SierraOnLine-Box-KingsQuest4.jpg/1200px-SierraOnLine-Box-KingsQuest4.jpg",
      sinopse: "King's Quest IV se tornou um grande marco da historia dos jogos por seguir a linha de ser um dos primeiros jogos a ter uma protagonista mulher em uma grande jornada, como já dito algo nem um pouco comum para a época. Como a maioria dos jogos produzidos por Roberta esse também foi um dos que explorava uma parte que não ligavam muito, mas que quando feito se tornava um fenômeno.",
      enredo: "O jogo conta com a historia da Princesa Rosella que decide ir em uma aventura para encontrar uma fruta magica que salvara seu pai o rei Graham que sofre de uma grave doença aparentemente sem cura. Roselça então com ajuda de algumas fadas vai para o reino misterioso de Tamir em busca da fruta magica.",
      mecanica: "As mecanicas do jogo ainda são simples, o jogador se move com o toque na tela em determinado local, ao se aproximar de algo, através de um comando básico ele pode ter suas ações com falar, abrir alguma porta e entre outras ações. O Jogo tem bastantes cenas de diálogos com personagens, além de uma qualidade gráfica bem alta em comparação a algumas outras produções, contando com bastante detalhes e cores bem vibrantes.",
      gameplayImg: [
        "img/imagem8.png",
        "img/imagem9.jpeg",
        "img/imagem10.jpeg"
      ]
    );
    jogos.add(jogo4);

    return jogos;
  }
}