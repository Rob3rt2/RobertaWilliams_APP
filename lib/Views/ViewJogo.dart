import 'package:app_roberta_williams/Models/Jogo.dart';
import 'package:flutter/material.dart';

class ViewJogo extends StatefulWidget {
  const ViewJogo({super.key});

  @override
  State<ViewJogo> createState() => _ViewJogoState();
}
class _ViewJogoState extends State<ViewJogo> {
  final ScrollController rolagemController = ScrollController();
  int indexJogoAtual = 0;

  @override
  Widget build(BuildContext context) {
    var jogos = Jogo.getJogo();
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Jogos Produzidos",
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.black,
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              border:
                  Border.all(color: Colors.white, width: 1), // Contorno branco
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'img/fundo2.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
              child: Container(color: Colors.black.withOpacity(0.4)),
            ),
            SingleChildScrollView(
              controller: rolagemController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(jogos[indexJogoAtual].nome,
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Image.network(jogos[indexJogoAtual].capaImg, width: 200,),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => btnAnterior(),
                          child: Text(
                            'Anterior', // Texto do botão
                            style: TextStyle(
                              color: Colors.white, // Texto branco
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Colors.transparent, // Fundo transparente
                            side: BorderSide(
                                color: Colors.white, width: 2), // Borda branca
                            elevation: 0, // Sem sombra (elevação)
                            padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10), // Padding interno
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  5), // Bordas arredondadas
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 75,
                        ),
                        ElevatedButton(
                          onPressed: () => btnProximo(),
                          child: Text(
                            'Próximo', // Texto do botão
                            style: TextStyle(
                              color: Colors.white, // Texto branco
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            side: BorderSide(color: Colors.white, width: 2),
                            elevation: 0,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),



                  SizedBox(
                    height: 60,
                  ),
                  Align(
                    alignment: Alignment(-0.8, 0),
                    child: Text('Sinopse',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 5, right: 40),
                    child: Text(
                      jogos[indexJogoAtual].sinopse,
                        style: TextStyle(color: const Color.fromARGB(197, 253, 253, 253), fontSize: 12)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 2, right: 40),
                    child: Image.network(jogos[indexJogoAtual].gameplayImg[0], width: 300,),
                  ),
                  

                  
                  SizedBox(
                    height: 60,
                  ),
                  Align(
                    alignment: Alignment(-0.8, 0),
                    child: Text('Enredo',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 5, right: 40),
                    child: Text(
                      jogos[indexJogoAtual].enredo,
                        style: TextStyle(color: const Color.fromARGB(197, 253, 253, 253), fontSize: 12)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 5, right: 40),
                    child: Image.network(jogos[indexJogoAtual].gameplayImg[1], width: 300,),
                  ),



                  SizedBox(
                    height: 60,
                  ),
                  Align(
                    alignment: Alignment(-0.8, 0),
                    child: Text('Mecânicas',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 5, right: 40),
                    child: Text(
                      jogos[indexJogoAtual].mecanica,
                        style: TextStyle(color: const Color.fromARGB(197, 253, 253, 253), fontSize: 12)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 15, right: 40),
                    child: Image.network(jogos[indexJogoAtual].gameplayImg[2], width: 300,),
                  ),
                ],
              ),
            ),

            // Floating button para retornar ao topo:
            Positioned(
              right: 16.0,
              bottom: 16.0,
              child: FloatingActionButton(
                onPressed: () {
                  // Fazer a rolagem para o topo
                  rolagemController.animateTo(
                    0.0,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                child: Icon(Icons.arrow_upward, color: const Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  void btnAnterior() {
    setState(() {
      indexJogoAtual--;
      if (indexJogoAtual < 0) {
        indexJogoAtual = Jogo.getJogo().length - 1; 
      }
    });
  }

  void btnProximo() {
    setState(() {
      indexJogoAtual++;
      if (indexJogoAtual >= Jogo.getJogo().length) {
        indexJogoAtual = 0; 
      }
    });
  }
}




