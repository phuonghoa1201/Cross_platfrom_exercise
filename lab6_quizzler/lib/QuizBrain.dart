import 'package:lab6_quizzler/Question.dart';
class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('AI can now generate full songs that top real music charts.', true),
    Question('Quantum computers are already replacing all classical computers.', false),
    Question('You can now have a full conversation with an AI that sees and hears you.', true),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}

final QuizBrain quizBrain = QuizBrain();