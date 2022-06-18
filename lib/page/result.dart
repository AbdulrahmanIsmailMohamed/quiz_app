import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.restart, required this.totalScore})
      : super(key: key);

  final int totalScore;

  final Function()? restart;

  String get resultPharse {
    String resultText;
    if (totalScore >= 70) {
      resultText = "You are awesome!";
    } else if (totalScore >= 40) {
      resultText = "Prettey likable!";
    } else {
      resultText = "You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Done !",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            "Your result = $totalScore",
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            resultPharse,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Do you want to restart the questions?",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              TextButton(
                onPressed: restart,
                child: const Text(
                  "Click Here",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
