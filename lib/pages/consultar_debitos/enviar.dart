import 'package:flutter/material.dart';

class DebitosEnviarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Envio Finalizado')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Dados enviados com sucesso!'),
          ElevatedButton(
            child: Text('Voltar ao Início'),
            onPressed: () =>
                Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false),
          ),
        ],
      ),
    ),
  );
}
