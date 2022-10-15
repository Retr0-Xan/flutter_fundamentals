import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
  }


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return  _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
    void _answerQuestion()  //function linked to selectHandler
    {
      setState(() 
    {
     _questionIndex += 1;
     }
    );
      print (_questionIndex);
    }
@override
  Widget build(BuildContext context) {
  var questions = [
    {"questionText":"What's favorite animal?", 
    "answerText": ["Dogs","Cats","Rabbits","Mice"] },
      
      {"questionText": "What is your favorite color", 
    "answerText": ["Red","Purple","Green","Blue"] },

    {"questionText": "What is your favorite subject", 
    "answerText": ["Chemistry","Science","Geography","Math"]}
      ];

    return MaterialApp(
      home: 
      Scaffold(
        appBar:
            AppBar (title: Text("Simple Quizlet") ,centerTitle: true ,backgroundColor: Colors.red),
        body:
      
         Column(children: [
          Question(questions[_questionIndex]["questionText"],),
          
         ...(questions[_questionIndex]["answerText"] as List<String>).map((answer) {
          return Answer(_answerQuestion, answer);
         }).toList()
         ],
        ),
        backgroundColor: Color.fromARGB(255, 195, 228, 244),
      ),
    );
  }
}  






//Answer(_answerQuestion),//argument is considered "selectHandler" in answer.dart