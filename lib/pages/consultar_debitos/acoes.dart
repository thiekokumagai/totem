import 'package:flutter/material.dart';

class DebitosAcoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Ações')),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Text('Pix'),
          onPressed: () =>
              Navigator.pushNamed(context, '/consultar-debitos/pix'),
        ),
        ElevatedButton(
          child: Text('Boleto'),
          onPressed: () =>
              Navigator.pushNamed(context, '/consultar-debitos/boleto'),
        ),
        ElevatedButton(
          child: Text('Cartão'),
          onPressed: () =>
              Navigator.pushNamed(context, '/consultar-debitos/cartao'),
        ),
        ElevatedButton(
          child: Text('Enviar'),
          onPressed: () =>
              Navigator.pushNamed(context, '/consultar-debitos/enviar'),
        ),
      ],
    ),
  );
}
