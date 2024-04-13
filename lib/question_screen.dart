import 'package:flutter/material.dart';
import 'package:quiz_app/answer_btn.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.aswerList});

  final void Function(String answer) aswerList;
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentIndex = 0;

  void nextQuestion(String selectedAnswer) {
    widget.aswerList(selectedAnswer);

    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentque = questions[currentIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentque.text,
              style: GoogleFonts.josefinSans(
                  fontWeight: FontWeight.w400, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentque.getShuffeldAns().map(
              (answer) {
                return AnswerBtn(
                    answerText: answer,
                    onTap: () {
                      nextQuestion(answer);
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
