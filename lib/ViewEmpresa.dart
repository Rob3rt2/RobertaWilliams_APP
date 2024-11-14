import 'package:app_roberta_williams/Models/Empresa.dart';
import 'package:flutter/material.dart';

class TelaEmpresa extends StatelessWidget {
  const TelaEmpresa({super.key});

  @override
  Widget build(BuildContext context) {
    var empresa = Empresa.getEmpresa();
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
            Row(
              children: [
                 Padding(padding: EdgeInsets.symmetric(
                 horizontal: 20,
                 vertical: 50,
                              )), 
                Text(empresa[indexJogoAtual].nome,
               style: TextStyle(color: Colors.white, fontSize: 25)),
              ]
            ),
            Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(
                      horizontal: 170,
                      vertical: 50,
                    )),
                   Image.network(empresa[indexJogoAtual].logo,width: 150,)
                  ],
                ),

              
        
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(empresa[indexJogoAtual].historiaEmpresa,
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                ],
          
              ),
          ],
      )

        ),
    );
    
    
  }
}