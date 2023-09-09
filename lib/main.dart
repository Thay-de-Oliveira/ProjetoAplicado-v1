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
