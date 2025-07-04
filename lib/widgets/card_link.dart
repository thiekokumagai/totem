import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardLink extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final IconData icon;
  final bool highlighted;

  const CardLink({
    super.key,
    required this.onTap,
    required this.label,
    required this.icon,
    this.highlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Efeito de luz amarela atrás
        if (highlighted)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow.withOpacity(0.4),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(50),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 70,
              right: 35,
              top: 32,
              bottom: 32,
            ),
            decoration: BoxDecoration(
              gradient: const RadialGradient(
                colors: [Color(0xFF29A495), Color(0xFF54D5C6)],
                center: Alignment.center,
                radius: 1,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Ícone e texto
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 89,
                      alignment: Alignment.center,
                      child: Icon(icon, size: 80, color: Color(0xFF10413F)),
                    ),
                    const SizedBox(width: 30),
                    Text(
                      label,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                // Ícone de seta em círculo
                Container(
                  width: 64,
                  height: 64,
                  decoration: const BoxDecoration(
                    gradient: RadialGradient(
                      colors: [Color(0xFF032A28), Color(0xFF10413F)],
                      center: Alignment.center,
                      radius: 1,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    FontAwesomeIcons.arrowRight,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
