import 'package:flutter/material.dart';

class DebitosBoletoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Gerar Boleto')),
    body: Center(
      child: ElevatedButton(
        child: Text('Finalizar: Enviar'),
        onPressed: () =>
            Navigator.pushNamed(context, '/consultar-debitos/enviar'),
      ),
    ),
  );
}
