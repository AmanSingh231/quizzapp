import 'package:quiz/questions_and_ans.dart';

class QuestionLists {
  int _questionNumber = 0;
  int _checknumber = 0;
  final List<QuestonsAndAnswers> _questionBank = [
    QuestonsAndAnswers(questions: "shiva is always with you", answers: true),
    QuestonsAndAnswers(
        questions: "he will not always help you", answers: false),
    QuestonsAndAnswers(questions: "you're a noob", answers: false),
    QuestonsAndAnswers(questions: "i am pro", answers: true)
  ];

  String questions() {
    return _questionBank[_questionNumber].questions;
  }

  bool answers() {
    return _questionBank[_questionNumber].answers;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool check (){
    if(_checknumber <_questionBank.length)
      {
        _checknumber++;
        return true;
      }
    else{
      _checknumber++;
      return false;
    }
  }
}
