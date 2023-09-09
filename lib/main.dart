import 'package:flutter/material.dart';

import 'app/components/menu-inferior.dart';

import 'app/components/barra-superior.dart';

import 'app/tela-inicio.dart';

import 'app/tela-inicio.dart';
import 'app/tela-login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', //Rota inicial
      routes: {
        '/': (context) => LoginApp(), //Login
        //'/cadastro': (context) => CadastroApp(),
        '/tela-inicio': (context) => Home(
              title: '',
            ), //Home
      },
    );
  }
}

/*class MyApp extends StatelessWidget {
  @override //Sobrescreve o método build da classe pai
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Defesa Civil',
      home: Scaffold(
        appBar: PreferredSize(
          //Define a barra superior
          preferredSize: Size.fromHeight(65), //Altura
          child: Menu(context), //Cria a barra
        ),
        body: MyHomePage(),
        bottomNavigationBar:
            BottomMenu(), //Passa o menu inferior através do "BottomMenu()"
        backgroundColor: Color(0xFFF1F1F1), //Fundo
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Constrói a interface
    return Center(
      child: Text('Conteúdo da Página'),
    );
  }
}*/
