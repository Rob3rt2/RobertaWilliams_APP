import 'package:flutter/material.dart';


class Empresa{
  
  final string nome;
  final string logo;
  final string localizacao;
  final string historiaEmpresa;


Empresa({

  required this.nome,
  required this.logo,
  required this.localizacao,
  required this.historiaEmpresa,
});
}


class TelaEmpresa extends StatelessWidget {
  const TelaEmpresa({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          backgroundColor: 
            color:Colors.black,
          centerTitle: true,
          title const(
            'Empresas',
             style: TextStyle(color: Colors.white),
          )
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color:Colors.white),
            onPressed: (){
              Navigator.main(context);

            },
          ),

        ),
        body: Stack(


        )
      
    );
  }
}