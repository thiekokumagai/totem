import 'package:flutter/material.dart';

class CNHQRcodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('QR Code CNH')),
    body: Center(
      child: ElevatedButton(
        child: Text('Finalizar: Enviar'),
        onPressed: () =>
            Navigator.pushNamed(context, '/consultar-pontuacao-cnh/enviar'),
      ),
    ),
  );
}
