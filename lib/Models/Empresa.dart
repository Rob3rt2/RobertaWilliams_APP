class Empresa{ 
  String nome;
  String logo;
  String localizacao;
  String historiaEmpresa;
  String txtEnvolvimento;
  List<String> ImgEmpresas;

  Empresa({
    required this.nome,
    required this.logo,
    required this.localizacao,
    required this.historiaEmpresa,
    required this.txtEnvolvimento,
    required this.ImgEmpresas,
  });

  // Método para retornar uma lista de jogos
  static List<Empresa> getEmpresa() {
    List<Empresa> empresas = [];

    Empresa empresa1 = Empresa(
      nome: "Sierra Entertainment",
      logo: "https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Sierra_Logo%2C_2014.png/220px-Sierra_Logo%2C_2014.png",
      localizacao: "Oakhurst - California",
      historiaEmpresa: "A Sierra entertainment ou Sierra On-Line é a empresa fundada por Ken e Roberta Williams 1980 com o nome de On-Line Systems mas que um tempo após o seu primeiro lançamento, o jogo Mystery House eles mudaram sua sede para Oakhurst uma pequena comunidade na localizada na California que é cercada pelo Floresta nacional de Sierra ao redor do parque nacional de Yosemite. Assim a empresa herdaria o nome de Sierra e também manteriam como logo a grande pedra de granito do parque.",
      txtEnvolvimento: "Roberta Williams tem papel fundamental na empresa, não atoa ela é uma das fundadoras junto de seu marido, durante todos esses anos desenvolvendo jogos na empresa ela sempre inseria algo que transforma aquele produto em uma coisa especial, como Mystery House e King's Quest IV e King's Quest VII ambos protagonizados por mulheres sendo um por uma mãe e uma filha, narrativa essa que na época nem se imaginava qualquer produto desse tipo.",
      ImgEmpresas: [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Half_Dome_from_Glacier_Point%2C_Yosemite_NP_-_Diliff.jpg/640px-Half_Dome_from_Glacier_Point%2C_Yosemite_NP_-_Diliff.jpg",
        "https://images.squarespace-cdn.com/content/v1/5cef493afddef50001d3ae4a/1585253788155-5WDJ4S82H2TF9BVOCVQP/RobertaLorelei.jpg?format=2500w"
      ]
    );
    empresas.add(empresa1);


    return empresas;
  }
}