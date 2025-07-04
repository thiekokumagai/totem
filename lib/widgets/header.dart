import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Texto centralizado
        const Center(
          child: Text(
            'Seu Texto Aqui',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Altere conforme necessário
            ),
          ),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}
