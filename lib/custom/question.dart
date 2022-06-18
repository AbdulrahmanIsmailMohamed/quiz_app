import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  const Question({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      question,
      style: const TextStyle(fontSize: 25.0,color: Colors.blue),
      textAlign: TextAlign.center,
    );
  }
}
