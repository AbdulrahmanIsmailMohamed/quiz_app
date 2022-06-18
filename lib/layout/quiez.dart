// ignore_for_file: avoid_print

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz_app/custom/question.dart';
import 'package:quiz_app/page/result.dart';

import '../custom/answer.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int _totalScore = 0;
  int _questionNumber = 0;

  void restart() {
    setState(() {
      _totalScore = 0;
      _questionNumber = 0;
    });
  }

  answer(int score) {
    _totalScore += score;
    print(_totalScore);
    setState(() {
      _questionNumber++;
    });
    print(_questionNumber);
    print("Anwer chosen");
  }

  final List _question = [
    {
      "question": "What's your favorite color?",
      "answer": [
        {"Text": "Red", "score": 10},
        {"Text": "Yellow", "score": 20},
        {"Text": "Black", "score": 30}
      ]
    },
    {
      "question": "What's your favorite Play?",
      "answer": [
        {"Text": "Football", "score": 10},
        {"Text": "Basketball", "score": 20},
        {"Text": "ball", "score": 20}
      ]
    },
    {
      "question": "What's your favorite instructor?",
      "answer": [
        {"Text": "Hassan", "score": 10},
        {"Text": "Wael", "score": 20},
        {"Text": "Abdullah", "score": 30}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(30),
        ),
        child: IconButton(
          onPressed: () {
            if (_questionNumber == 1) {
              setState(() {
                _questionNumber = 0;
              });
            }
            if (_questionNumber == 2) {
              setState(() {
                _questionNumber = 1;
              });
            }
            if (_questionNumber == 3) {
              setState(() {
                _questionNumber = 2;
              });
            }
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      // backgroundColor: Colors.grey[350],
      appBar: AppBar(
        // elevation: 0.0,
        title: const Text(
          "Quiz App",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Center(
        child: _questionNumber < _question.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Question(
                    question: _question[_questionNumber]["question"].toString(),
                  ),
                  ...(_question[_questionNumber]["answer"] as List)
                      .map(
                        (e) => Answer(
                          answer: e["Text"].toString(),
                          onPressed: () => answer(e["score"]),
                        ),
                      )
                      .toList(),
                ],
              )
            : Result(restart: restart, totalScore: _totalScore),
      ),
    );
  }
}
