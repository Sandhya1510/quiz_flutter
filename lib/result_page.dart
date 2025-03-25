import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int score;

  ResultPage({required this.score});

  String getResultMessage() {
    if (score == 10) {
      return 'Excellent!';
    } else if (score == 9) {
      return 'Very Good!';
    } else if (score == 8) {
      return 'Good!';
    } else if (score >= 5 && score < 8) {
      return 'Average';
    } else {
      return 'Need to Improve';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quiz Completed!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Your Score: $score',                 //(Score will display)
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(                                   //(Based on the Score Compliment will display
              getResultMessage(),
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 20),
            ElevatedButton(                       //(Navigate to Home screen)
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
