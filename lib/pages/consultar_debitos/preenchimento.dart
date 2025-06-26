import 'package:flutter/material.dart';

class DebitosPreenchimentoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Preenchimento')),
    body: Center(
      child: ElevatedButton(
        child: Text('Próximo: Dados'),
        onPressed: () =>
            Navigator.pushNamed(context, '/consultar-debitos/dados'),
      ),
    ),
  );
}
