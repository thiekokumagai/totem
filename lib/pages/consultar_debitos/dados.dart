import 'package:flutter/material.dart';

class DebitosDadosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Dados')),
    body: Center(
      child: ElevatedButton(
        child: Text('Próximo: Ações'),
        onPressed: () =>
            Navigator.pushNamed(context, '/consultar-debitos/acoes'),
      ),
    ),
  );
}
