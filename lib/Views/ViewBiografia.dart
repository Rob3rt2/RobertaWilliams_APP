import 'package:app_roberta_williams/Models/Biografia.dart';
import 'package:flutter/material.dart';

class ViewBiografia extends StatelessWidget {
  const ViewBiografia({super.key});

  @override
  Widget build(BuildContext context) {
    var biografias = Biografia.getBiografia();
    int indexAtual = 0;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Biografia",
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
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(biografias[indexAtual].nome,
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          biografias[indexAtual].ImgBiografia[0],
                          width: 200,
                        ),
                        SizedBox(
                            width: 20), // Espaçamento entre a imagem e o texto
                        // Texto da biografia
                        Expanded(
                            child: Text(biografias[indexAtual].txtInicio,
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        197, 253, 253, 253),
                                    fontSize: 13))),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 8.0),
                      child: Text(biografias[indexAtual].txtJogos,
                          style: TextStyle(
                              color: const Color.fromARGB(197, 253, 253, 253),
                              fontSize: 13))),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 48.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text(biografias[indexAtual].txtMysteryHouse,
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        197, 253, 253, 253),
                                    fontSize: 13))),
                        SizedBox(width: 20),
                        Image.network(
                          biografias[indexAtual].ImgBiografia[1],
                          width: 200,
                          height: 500,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 8.0),
                      child: Text(biografias[indexAtual].txtJogos,
                          style: TextStyle(
                              color: const Color.fromARGB(197, 253, 253, 253),
                              fontSize: 13))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
