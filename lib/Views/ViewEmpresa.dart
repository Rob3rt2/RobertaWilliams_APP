import 'package:app_roberta_williams/Models/Empresa.dart';
import 'package:flutter/material.dart';

class ViewEmpresa extends StatelessWidget {
  const ViewEmpresa({super.key});

  @override
  Widget build(BuildContext context) {
    var empresas = Empresa.getEmpresa();
    int indexJogoAtual = 0;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Empresas Atuantes",
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
              child: Column(children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 5, right: 40),
                  child: Row(
                    children: [
                      Text(empresas[indexJogoAtual].nome,
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      SizedBox(
                        width: 30,
                      ),
                      Image.network(
                        empresas[indexJogoAtual].logo,
                        width: 100,
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 40.0, top: 5, right: 40),
                    child: Text(empresas[indexJogoAtual].historiaEmpresa,
                        style: TextStyle(
                            color: const Color.fromARGB(197, 253, 253, 253),
                            fontSize: 12))),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 40.0, top: 5, right: 40),
                    child: Text(
                        'Localização: ' + empresas[indexJogoAtual].localizacao,
                        style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 12))),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 2, right: 40),
                  child: Image.network(
                    empresas[indexJogoAtual].ImgEmpresas[0],
                    width: 420,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 5, right: 40),
                  child: Text('Envolvimento Com Roberta Williams',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 40.0, top: 5, right: 40),
                    child: Text(empresas[indexJogoAtual].txtEnvolvimento,
                        style: TextStyle(
                            color: const Color.fromARGB(197, 253, 253, 253),
                            fontSize: 12))),
                
                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 2, right: 40),
                  child: Image.network(
                    empresas[indexJogoAtual].ImgEmpresas[1],
                    width: 420,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
