import 'dart:ui';
import 'package:flutter/material.dart';
import '../widgets/footer.dart';

class EncerrarPage extends StatelessWidget {
  final bool highlighted;

  const EncerrarPage({super.key, this.highlighted = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5F9F7),
      body: Stack(
        children: [
          // Imagens de fundo posicionadas no Stack fora do Expanded
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/vv-home.png',
              width: 600,
              height: 855,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: -130,
            right: 0,
            child: Image.asset(
              'assets/images/vv-home2.png',
              width: 673,
              height: 940,
              fit: BoxFit.contain,
            ),
          ),

          // Conteúdo principal + rodapé, organizados em Column que fica dentro do Stack
          Column(
            children: [
              // Conteúdo principal que ocupa o máximo do espaço
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 500),
                      Align(
                        alignment: Alignment
                            .topCenter, // Centraliza a "div" de 980 na tela
                        child: SizedBox(
                          width: 980, // Largura fixa
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 250,
                            ), // Menos vazio à esquerda
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment
                                  .stretch, // Permite alinhamento à direita
                              children: [
                                Text.rich(
                                  TextSpan(
                                    text: 'Esperamos ter lhe ajudado(a)\ncom ',
                                    style: const TextStyle(
                                      fontSize: 55,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'nossos serviços',
                                        style: const TextStyle(
                                          color: Color(
                                            0xFF10413F,
                                          ), // Verde escuro personalizado
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  'Até Logo!',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF032A28),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      // Container com imagem e botão flutuante
                    ],
                  ),
                ),
              ),
              Image.asset('assets/images/avatar05.png', fit: BoxFit.contain),

              const Footer(),
            ],
          ),
        ],
      ),
    );
  }
}
