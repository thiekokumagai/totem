import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Página Inicial')),
    body: Center(
      child: ElevatedButton(
        child: Text('Ir para Menu de Serviços'),
        onPressed: () => Navigator.pushNamed(context, '/menu-servicos'),
      ),
    ),
  );
}
