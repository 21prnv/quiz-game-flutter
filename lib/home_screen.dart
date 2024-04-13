import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
              colorBlendMode: BlendMode.clear,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Lets Get Started',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: startQuiz,
            label: const Text('Lest Go'),
            icon: const Icon(Icons.arrow_right_alt),
            style: ElevatedButton.styleFrom(primary: Colors.purpleAccent),
          )
        ],
      ),
    );
  }
}
