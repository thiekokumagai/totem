import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Separador
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SizedBox(
            width: double.infinity,
            height: 15,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0xFF032A28),
                borderRadius: BorderRadius.all(Radius.circular(999)),
              ),
            ),
          ),
        ),

        const SizedBox(height: 20),

        // Rodapé fixo
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'assets/images/inovvati-logo.svg',
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

        const SizedBox(height: 20),
      ],
    );
  }
}
