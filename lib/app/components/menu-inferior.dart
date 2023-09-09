import 'package:flutter/material.dart';

class MenuInferior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 71,
      decoration: BoxDecoration(color: Colors.white),

      // Adicione o conteúdo do seu menu inferior aqui

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //USUÁRIO
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/imagens/icon-perfil.png'),
              SizedBox(height: 4), // Espaço entre o ícone e o texto
              Text(
                'Usuário',
                style: TextStyle(
                  color: Color(0xff999999),
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.30,
                ),
              ),
            ],
          ),

          //INÍCIO
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/imagens/icon-home.png'),
              SizedBox(height: 4), // Espaço entre o ícone e o texto
              Text(
                'Início',
                style: TextStyle(
                  color: Color(0xff2987C0),
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.30,
                ),
              ),
            ],
          ),

          //MAPA
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/imagens/icon-mapa.png'),
              SizedBox(height: 4), // Espaço entre o ícone e o texto
              Text(
                'Mapa',
                style: TextStyle(
                  color: Color(0xff999999),
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
