import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/menu_servicos.dart';
import 'pages/consultar_debitos/preenchimento.dart';
import 'pages/consultar_debitos/dados.dart';
import 'pages/consultar_debitos/acoes.dart';
import 'pages/consultar_debitos/pix.dart';
import 'pages/consultar_debitos/boleto.dart';
import 'pages/consultar_debitos/cartao.dart';
import 'pages/consultar_debitos/enviar.dart';
import 'pages/consultar_pontuacao_cnh/preenchimento.dart';
import 'pages/consultar_pontuacao_cnh/dados.dart';
import 'pages/consultar_pontuacao_cnh/acoes.dart';
import 'pages/consultar_pontuacao_cnh/qr_code.dart';
import 'pages/consultar_pontuacao_cnh/enviar.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consultar Débitos',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/menu-servicos': (context) => MenuServicosPage(),
        // Fluxo: Débitos
        '/consultar-debitos/preenchimento': (context) =>
            DebitosPreenchimentoPage(),
        '/consultar-debitos/dados': (context) => DebitosDadosPage(),
        '/consultar-debitos/acoes': (context) => DebitosAcoesPage(),
        '/consultar-debitos/pix': (context) => DebitosPixPage(),
        '/consultar-debitos/boleto': (context) => DebitosBoletoPage(),
        '/consultar-debitos/cartao': (context) => DebitosCartaoPage(),
        '/consultar-debitos/enviar': (context) => DebitosEnviarPage(),

        // Fluxo: CNH
        '/consultar-pontuacao-cnh/preenchimento': (context) =>
            CNHPreenchimentoPage(),
        '/consultar-pontuacao-cnh/dados': (context) => CNHDadosPage(),
        '/consultar-pontuacao-cnh/acoes': (context) => CNHAcoesPage(),
        '/consultar-pontuacao-cnh/qr-code': (context) => CNHQRcodePage(),
        '/consultar-pontuacao-cnh/enviar': (context) => CNHEnviarPage(),
      },
    );
  }
}
