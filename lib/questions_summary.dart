import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryDate, {super.key});

  final List<Map<String, Object>> summaryDate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryDate.map((data) {
            return Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: data['user_answer'] == data['correct_answers']
                              ? Colors.greenAccent
                              : Colors.redAccent),
                      child: Text(
                        ((data['questions_index'] as int) + 1).toString(),
                        style: const TextStyle(color: Colors.white),
                      )),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['questions'] as String,
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['user_answer'] as String,
                          style: TextStyle(
                              color:
                                  data['user_answer'] == data['correct_answers']
                                      ? Colors.greenAccent
                                      : Colors.yellowAccent),
                        ),
                        Text(
                          data['correct_answers'] as String,
                          style: const TextStyle(color: Colors.greenAccent),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
