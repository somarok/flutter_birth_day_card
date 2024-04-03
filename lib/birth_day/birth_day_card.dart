import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class BirthDayCard extends StatefulWidget {
  const BirthDayCard({super.key, required this.name});

  final String name;

  @override
  State<BirthDayCard> createState() => _BirthDayCardState();
}

class _BirthDayCardState extends State<BirthDayCard>
    with TickerProviderStateMixin {
  late final AnimationController _lottieController;

  @override
  void initState() {
    _lottieController = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _lottieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 195, 255, 192),
              Color.fromARGB(255, 255, 248, 184),
            ],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HAPPY\n BIRTH DAY!\n${widget.name} :)',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..color = Colors.black
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset('assets/images/cake.png'),
                ],
              ),
            ),
            Lottie.asset(
              'assets/lottie/confetti.json',
              controller: _lottieController,
              onLoaded: (composition) {
                _lottieController.duration = composition.duration;
                _lottieController.forward();
                _lottieController.repeat();
              },
            ),
          ],
        ),
      ),
    );
  }
}
