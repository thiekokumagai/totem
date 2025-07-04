import 'package:flutter/material.dart';
import '../widgets/card_link.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuServicosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Menu de Serviços')),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardLink(
              label: 'Consultar Débitos',
              icon: FontAwesomeIcons.fileInvoice,
              highlighted: true,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/consultar-debitos/preenchimento',
                );
              },
            ),
            const SizedBox(height: 20),
            CardLink(
              label: 'Consultar Pontuação CNH',
              icon: FontAwesomeIcons.fileInvoice,
              highlighted: true,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/consultar-pontuacao-cnh/preenchimento',
                );
              },
            ),          
            const SizedBox(height: 20),
            CardLink(
              label: 'Multas',
              icon: FontAwesomeIcons.fileInvoice,
              highlighted: true,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '#',
                );
              },
            ), 
            const SizedBox(height: 20),
            CardLink(
              label: 'Agendamento de Cabine',
              icon: FontAwesomeIcons.fileInvoice,
              highlighted: true,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '#',
                );
              },
            ),
          ],
        ),
      ),
    ),
  );
}
