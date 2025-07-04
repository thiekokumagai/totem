import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            'assets/images/vv.png',
            width: 300,
            height: 330,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Opacity(
            opacity: 0.95,
            child: Container(
              width: 980,
              height: 225,
              margin: const EdgeInsets.only(top: 10),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                gradient: const RadialGradient(
                  colors: [Color(0xFF29A495), Color(0xFF54D5C6)],
                  center: Alignment.center,
                  radius: 1,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/logo-inovvati.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 280,
          right: 100,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF032A28),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.zero,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/encerrar');
            },
            child: SizedBox(
              width: 170,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/logout_icon.svg',
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'Sair',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
