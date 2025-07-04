import 'package:flutter/material.dart';

class MenuServicosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Menu de Serviços')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text('Consultar Débitos'),
            onPressed: () => Navigator.pushNamed(
              context,
              '/consultar-debitos/preenchimento',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Consultar Pontuação CNH'),
            onPressed: () => Navigator.pushNamed(
              context,
              '/consultar-pontuacao-cnh/preenchimento',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Multas'),
            onPressed: () => Navigator.pushNamed(
              context,
              '#',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Agendamento de Cabine'),
            onPressed: () => Navigator.pushNamed(
              context,
              '#',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Sair'),
            onPressed: () => Navigator.pushNamed(
              context,
              '/encerrar',
            ),
          ),
        ],
      ),
    ),
  );
}
