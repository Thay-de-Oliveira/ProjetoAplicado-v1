import 'package:flutter/material.dart';

import 'components/barra-superior.dart';
import 'components/menu-inferior.dart';

class AtendimentoForms extends StatefulWidget {
  @override
  _AtendimentoFormsState createState() => _AtendimentoFormsState();
}

class _AtendimentoFormsState extends State<AtendimentoForms> {
  String _selectedNumeroProtocoloAtendimento = 'Selecionar protocolo';
  String _selectedTipoAtendimento = 'Selecionar atendimento';
  String _selectedCanalAtendimento = 'Selecionar canal de atendimento';

  List<String> numberOptions = [
    'Selecionar protocolo',
    '001',
    '002',
    '003',
    '004',
    '005'
  ];
  List<String> tipoAtendimentoOptions = [
    'Selecionar atendimento',
    'Presencial - Chapecó',
    'Presencial - Regional',
    'Presencial - Estadual',
    'Remoto',
    'Outros'
  ];
  List<String> canalAtendimentoOptions = [
    'Selecionar canal de atendimento',
    'Polícia Militar - 190',
    'Bombeiros -193',
    'Polícia Civil - 197',
    'Defesa Civil - 199',
    'Outros'
  ];

  InputDecoration _customInputDecoration(String labelText) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(fontSize: 18), //Tamanho da fonte
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0), //Borda arredondada
      ),
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: Colors.grey), //Cor da borda quando inativo
        borderRadius: BorderRadius.circular(10.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue), //Cor da borda quando ativo
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: BarraSuperior(context), // Adicione a barra superior aqui
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //Campo "Número do protocolo de acontecimento"
                  DropdownButtonFormField<String>(
                    value: _selectedNumeroProtocoloAtendimento,
                    items: numberOptions.map((String option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedNumeroProtocoloAtendimento = newValue!;
                      });
                    },
                    decoration: _customInputDecoration(
                        'Número do protocolo de acontecimento:'),
                  ),

                  SizedBox(height: 30),

                  //Campo "Tipo de atendimento"
                  DropdownButtonFormField<String>(
                    value: _selectedTipoAtendimento,
                    items: tipoAtendimentoOptions.map((String option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedTipoAtendimento = newValue!;
                      });
                    },
                    decoration: _customInputDecoration('Tipo de atendimento:'),
                  ),

                  SizedBox(height: 30),

                  DropdownButtonFormField<String>(
                    value: _selectedCanalAtendimento,
                    items: canalAtendimentoOptions.map((String option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedCanalAtendimento = newValue!;
                      });
                    },
                    decoration: _customInputDecoration(
                        'Canal da solicitação:'), // Aplicar estilo personalizado
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: MenuInferior(),
    );
  }
}
