import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/barra-superior.dart';
import 'components/menu-inferior.dart';
import 'tela-login.dart';
import 'tela-inicio.dart';
import 'tela-atendimento-forms.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/imagens/Wallpaper.png'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AtendimentoForms(),
                      ),
                    );
                  },
                  child: Text('Ir para Atendimento Forms'),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: BarraSuperior(context),
          ),
        ],
      ),
      bottomNavigationBar: MenuInferior(),
    );
  }
}
