import 'package:flutter/material.dart';

class DebitosCartaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Pagamento com Cartão')),
    body: Center(
      child: ElevatedButton(
        child: Text('Finalizar: Enviar'),
        onPressed: () =>
            Navigator.pushNamed(context, '/consultar-debitos/enviar'),
      ),
    ),
  );
}
