import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
   final Function selectHandler;                // selectHandler is just a name(you can use any name). selectHandler is a function(performs an action)
   final String answerT;
  Answer(this.selectHandler, this.answerT);      //constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      
    width: double.infinity,
      child: ElevatedButton(
  
        child: Text(answerT), 
          onPressed:()
          {
          selectHandler(); //execute the predefined function. action in main.dart
           } 
            
            ),
    );
  }
}