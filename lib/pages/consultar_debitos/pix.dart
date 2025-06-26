import 'package:flutter/material.dart';

class DebitosPixPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Pagamento Pix')),
    body: Center(
      child: ElevatedButton(
        child: Text('Finalizar: Enviar'),
        onPressed: () =>
            Navigator.pushNamed(context, '/consultar-debitos/enviar'),
      ),
    ),
  );
}
