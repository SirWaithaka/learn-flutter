import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  bool answer;

  AnswerButton(this.answer);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Material( // True button
        color: answer == true ? Colors.greenAccent : Colors.redAccent,
        child: new InkWell(
          onTap: () => print('You answered $answer.'),
          child: new Center(
            child: Container(
              child: new Text(answer == true ? "True" : "False")
            )
          ),
        ),
      ),
    );
  }
}