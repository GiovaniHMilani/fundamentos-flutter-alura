import 'package:bytebank/pages/Home/components/ItemTransferencia.dart';
import 'package:flutter/material.dart';

import 'Input.dart';

class FormContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormContainerState();
  }
}

class FormContainerState extends State<FormContainer> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Input(
            controller: _controladorCampoNumeroConta,
            label: 'Numero da conta',
            hint: '0000',
          ),
          Input(
            controller: _controladorCampoValor,
            label: 'Valor da transferencia',
            hint: '0.00',
            icon: Icons.monetization_on,
          ),
          RaisedButton(
            child: Text('Confirmar'),
            onPressed: () => _criarTransferencia(context),
          ),
        ],
      ),
    );
  }

  void _criarTransferencia(BuildContext context) {
    final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double valor = double.tryParse(_controladorCampoValor.text);

    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
