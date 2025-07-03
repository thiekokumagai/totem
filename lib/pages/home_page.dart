import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5F9F7),
      body: Stack(
        children: [
          // Imagem de fundo (top-left)
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

          // Imagem de fundo (bottom-right)
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

          // Conteúdo principal
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                const Text(
                  'Totem de\nAutoatendimento',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3DD8CC),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/images/logo_inovati.png', height: 80),
                      const SizedBox(height: 16),
                      const Text(
                        'TECNOLOGIA',
                        style: TextStyle(fontSize: 18, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton.icon(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/menu-servicos'),
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('Acessar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ), // espaço lateral
                  child: Container(
                    width: double.infinity,
                    height: 15,
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.black
                          : const Color(0xFF032A28),
                      borderRadius: BorderRadius.circular(999),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/inovvati-logo-rodape.png',
                        height: 24,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '© 2025 Inovati - Todos os direitos reservados',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.teal.shade900.withOpacity(0.2)
      ..strokeWidth = 12
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, size.height * 0.2);
    path.lineTo(size.width * 0.4, 0);

    path.moveTo(0, size.height * 0.3);
    path.lineTo(size.width * 0.6, 0);

    path.moveTo(0, size.height * 0.4);
    path.lineTo(size.width * 0.8, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
