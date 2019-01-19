class Question {
  final String question;
  final bool answer;
  int _points;

  Question(this.question, this.answer);

  SetPoint(int points)
  {
    _points = points;
  }
}