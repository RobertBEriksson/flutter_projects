class Question {
  final String question;
  int _points;

  Question(this.question);

  SetPoint(int points)
  {
    _points = points;
  }

  int GetPoint()
  {
    return _points;
  }
}