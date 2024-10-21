import 'package:app_roberta_williams/Empresa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp (title: "App",
      home: MainApp(),));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container( 
              decoration: BoxDecoration(
                image: DecorationImage(
                image: NetworkImage(
                  'img/fundo.jpeg',
                  ), 
                fit: BoxFit.cover
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(0.4)
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Center(
              child: Image.network(
              'img/titulo.png',
              width: 400,
              height: 400,
            )),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            children: [
              SizedBox(
                width: 55,
              ),
              IconButton(
                  onPressed: () => Navegacao(context),
                  icon: Icon(
                    Icons.menu_book,
                    color: Colors.white,
                    size: 40,
                  )),
              SizedBox(
                width: 100,
              ),
              IconButton(
                  onPressed: () => Navegacao(context, Emp == true),
                  icon: Icon(
                    Icons.apartment,
                    color: Colors.white,
                    size: 40,
                  )),
                  SizedBox(
                width: 100,
              ),
              IconButton(
                  onPressed: () => Navegacao(context),
                  icon: Icon(
                    Icons.videogame_asset,
                    color: Colors.white,
                    size: 40,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

Navegacao(BuildContext context, bool Emp) {
  Emp = false;
  bool Bio = false;
  bool Jog = false;

  if(Emp){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Empresa()),
  );
  }
}

