import 'package:flutter/material.dart';
import 'package:quiz/question_lists.dart';


class QuizApp1 extends StatefulWidget {
  const QuizApp1({Key? key}) : super(key: key);

  @override
  _QuizApp1State createState() => _QuizApp1State();
}

class _QuizApp1State extends State<QuizApp1> {


  List<Widget> scoreKeeper = [];
  QuestionLists queList = QuestionLists();
   int questionNumber = 0;
   int checkBox = 0;
   late bool ans ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 12,
          child: Center(
            child: Text(
              queList.questionBank[questionNumber].questions,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
            onPressed: () {
              setState(() {


                ans= queList.questionBank[questionNumber].answers;
                if(ans == true && checkBox<=3){
                  checkBox++;
                  scoreKeeper.add(
                    const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
                  );
                }else if(checkBox<=3){
                  checkBox++;
                  scoreKeeper.add(
                    const Icon(
                      Icons.cancel,
                      color: Colors.red,
                    ),
                  );
                }
                if(questionNumber<=2){
                  questionNumber++;
                }


              });
            },
            child: const Text("True"),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 2,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            onPressed: () {
              setState(() {
                ans=queList.questionBank[questionNumber].answers;
                if(ans == false){
                  scoreKeeper.add(
                    const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
                  );
                }else{
                  scoreKeeper.add(
                    const Icon(
                      Icons.cancel,
                      color: Colors.red,
                    ),
                  );
                }
                if (questionNumber <= 2) {
                  questionNumber++;
                }
              });
            },
            child: const Text("False"),
          ),
        ),
        Expanded(
          child: Row(
            children: scoreKeeper,
          ),
        ),
      ],
    );
  }
}
