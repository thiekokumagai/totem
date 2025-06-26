import 'package:flutter/material.dart';

class CNHAcoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Ações')),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Text('QR Code'),
          onPressed: () =>
              Navigator.pushNamed(context, '/consultar-pontuacao-cnh/qr-code'),
        ),
        ElevatedButton(
          child: Text('Enviar'),
          onPressed: () =>
              Navigator.pushNamed(context, '/consultar-pontuacao-cnh/enviar'),
        ),
      ],
    ),
  );
}
