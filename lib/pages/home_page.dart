import 'dart:ui';
import 'package:flutter/material.dart';
import '../widgets/footer.dart'; 
class HomePage extends StatelessWidget {
  final bool highlighted;

  const HomePage({
    super.key,
    this.highlighted = false,
  });

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
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 300),
                       Align(
                          alignment: Alignment.topCenter, // Centraliza a "div" de 980 na tela
                          child: SizedBox(
                            width: 980, // Largura fixa
                            child: Padding(
                              padding: const EdgeInsets.only(left: 430), // 50% vazio à esquerda
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Alinha o texto normalmente
                                children: const [
                                  Text(
                                    'Totem de',
                                    style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF032A28),
                                      height: 1.0, // Altura da linha menor
                                    ),
                                  ),
                                  Text(
                                    'Autoatendimento',
                                    style: TextStyle(
                                      fontSize: 70,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF032A28),
                                      height: 1.0, // Ainda mais compacto
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      SizedBox(height: 25),
                      // Container com imagem e botão flutuante
                      Center(
                        child: Container(
                          width: 980,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              // Imagem principal
                              Opacity(
                                opacity: 0.98,
                                child: Image.asset(
                                  'assets/images/logo-home.png',
                                  width: 980,
                                  height: 635,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              // Botão flutuante na base direita
                              Positioned(
                                bottom: -40,
                                right: 0,
                                child: SizedBox(
                                  width: 373,
                                  height: 148,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      if (highlighted)
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.yellow.withOpacity(0.4),
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(
                                              sigmaX: 20,
                                              sigmaY: 20,
                                            ),
                                            child: const SizedBox.expand(),
                                          ),
                                        ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/menu-servicos');
                                        },
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                          elevation: 4,
                                          backgroundColor: Colors.transparent,
                                        ).copyWith(
                                          shadowColor:
                                              MaterialStateProperty.all(Colors.transparent),
                                        ),
                                        child: Ink(
                                          decoration: BoxDecoration(
                                            gradient: const RadialGradient(
                                              colors: [
                                                Color(0xFF032A28),
                                                Color(0xFF10413F),
                                              ],
                                              center: Alignment.center,
                                              radius: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                          child: Container(
                                            width: 373,
                                            height: 148,
                                            padding: const EdgeInsets.fromLTRB(44, 28, 44, 28),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  'Acessar',
                                                  style: TextStyle(
                                                    fontSize: 50,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(width: 20),
                                                Icon(
                                                  Icons.arrow_forward,
                                                  size: 40,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
}
