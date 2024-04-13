class QuizQuestions {
  const QuizQuestions(this.text, this.answers);
  final String text;
  final List<String> answers;
  getShuffeldAns() {
    final shuffeldAns = List.of(answers);
    shuffeldAns.shuffle();
    return shuffeldAns;
  }
}
