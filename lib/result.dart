import 'package:flutter/material.dart';

class Result extends StatelessWidget
{
  final int resultScore;
  final VoidCallback resetHandeler;

  Result(this.resultScore, this.resetHandeler);

  String get resultPhrase
  {
    String resultText='You did it !!!';
    if(resultScore <= 18 && resultScore > 0)
    {resultText = 'You are awesome and innocent !!';}
    else if(resultScore <= 22 && resultScore > 18)
    {resultText = 'Your are pretty likeable !!';}
    else if(resultScore <= 26 && resultScore > 22)
    {resultText = 'Your are Strange !!';}
    else
    {resultText = 'Your are so Bad !!';}
    return resultText;
  }

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child:Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle( fontSize: 36, fontWeight: FontWeight.bold),
            textAlign : TextAlign.center,
          ),
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellowAccent),
                foregroundColor: MaterialStateProperty.all(Colors.black),
            ),
            onPressed: resetHandeler,
            child:
            const Text('Restart The Quiz !!'),
          ),
        ],
      ),
    );
  }
}