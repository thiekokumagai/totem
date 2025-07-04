import 'package:flutter/material.dart';
import '../widgets/card_link.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/header.dart';
import '../widgets/footer.dart';

class MenuServicosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Menu de Serviços')),
    body: Stack(
      children: [
        Positioned.fill(
          child: Image.asset('assets/images/background.png', fit: BoxFit.cover),
        ),
        const Header(),
        Column(
          children: [
            // Conteúdo principal que ocupa o máximo do espaço
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 40,
                ),
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
                    const SizedBox(height: 60),
                    CardLink(
                      label: 'Consultar Pontuação CNH',
                      icon: FontAwesomeIcons.car,
                      highlighted: true,
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/consultar-pontuacao-cnh/preenchimento',
                        );
                      },
                    ),
                    const SizedBox(height: 60),
                    CardLink(
                      label: 'Multas',
                      icon: FontAwesomeIcons.bookBookmark,
                      highlighted: true,
                      onTap: () {
                        Navigator.pushNamed(context, '#');
                      },
                    ),
                    const SizedBox(height: 60),
                    CardLink(
                      label: 'Agendamento de Cabine',
                      icon: FontAwesomeIcons.calendarCheck,
                      highlighted: true,
                      onTap: () {
                        Navigator.pushNamed(context, '#');
                      },
                    ),
                  ],
                ),
              ),
            ),
            const Footer(),
          ],
        ),
      ],
    ),
  );
}
