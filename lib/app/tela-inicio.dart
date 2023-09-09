import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/barra-superior.dart';
import 'components/menu-inferior.dart';
import 'tela-login.dart';
import 'tela-inicio.dart';

class Home extends StatefulWidget {
  const Home(
      {super.key,
      required this.title}); //Construtuor que obriga a fornecer um título
  final String title; //Armazena o titulo
  @override
  State<Home> createState() => _HomeState(); //Função
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, //Permite a visualização da barra superior
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            //Permite descer na tela
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                    'assets/imagens/Wallpaper.png'), //USANDO UMA IMAGEM PROVISÓRIA PARA RODAR A HOME
              ],
            ),
          ),
          Positioned(
            //Adiciona e fixa a BarraSuperior
            left: 0,
            top: 0,
            right: 0, // 0 para ocupar toda a largura da página
            child: BarraSuperior(context),
          ),
        ],
      ),
      bottomNavigationBar: MenuInferior(),
    );
  }
}
