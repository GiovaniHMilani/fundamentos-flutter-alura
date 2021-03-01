import './components/Form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormContainer(),
      appBar: AppBar(
        title: Text("Criando Transferência"),
      ),
    );
  }
}
