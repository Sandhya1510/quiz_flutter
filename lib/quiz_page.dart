// import 'package:flutter/material.dart';
// import 'result_page.dart';
//
// class QuizPage extends StatefulWidget {
//   const QuizPage({super.key});
//
//   @override
//   _QuizPageState createState() => _QuizPageState();
// }
//
// class _QuizPageState extends State<QuizPage> {
//   int _currentQuestion = 0;
//   int _score = 0;
//
//   // List of the questions
//   final List<Map<String, Object>> _questions = [
//     {
//       "question": "1. What is the default file extension for an Android layout file?",
//       "options": ["A) .html", "B) .xml", "C) .json", "D) .css"],
//       "answer": "B) .xml"
//     },
//     {
//       "question": "2. Which of the following is used to define a clickable button in Android?",
//       "options": ["A) <input>", "B) <button>", "C) <Button>", "D) <clickable>"],
//       "answer": "C) <Button>"
//     },
//     {
//       "question": "3. Which method is used to display a short message to the user?",
//       "options": ["A) Log.d()", "B) Toast.makeText()", "C) AlertDialog.show()", "D) System.out.println()"],
//       "answer": "B) Toast.makeText()"
//     },
//     {
//       "question": "4. What does AVD stand for in Android Studio?",
//       "options": ["A) Android Virtual Design", "B) Android Virtual Device", "C) App Visual Design", "D) Advanced Visual Display"],
//       "answer": "B) Android Virtual Device"
//     },
//     {
//       "question": "5. Which XML attribute is used to set the text of a TextView?",
//       "options": ["A) textColor", "B) textSize", "C) text", "D) textStyle"],
//       "answer": "C) text"
//     },
//     {
//       "question": "6. Which method is called when an Activity is first created?",
//       "options": ["A) onStart()", "B) onCreate()", "C) onResume()", "D) onPause()"],
//       "answer": "B) onCreate()"
//     },
//     {
//       "question": "7. Which method is used to find a view by its ID in an Activity?",
//       "options": ["A) findViewById()", "B) findById()", "C) getViewById()", "D) findId()"],
//       "answer": "A) findViewById()"
//     },
//     {
//       "question": "8. What is the parent class of all Activities in Android?",
//       "options": ["A) Application", "B) Context", "C) Activity", "D) View"],
//       "answer": "C) Activity"
//     },
//     {
//       "question": "9. Which programming languages are mainly used in Android Studio?",
//       "options": ["A) Python and Ruby", "B) Java and Kotlin", "C) C++ and Swift", "D) PHP and HTML"],
//       "answer": "B) Java and Kotlin"
//     },
//     {
//       "question": "10. Which of these is not a valid Android component?",
//       "options": ["A) Activity", "B) Fragment", "C) Broadcast Receiver", "D) Controller"],
//       "answer": "D) Controller"
//     },
//   ];
//
//   void _checkAnswer(String selectedOption) {            //(Check given answer is matched with provided answer or not)
//     if (selectedOption == _questions[_currentQuestion]['answer']) {
//       _score++;
//     }
//   }
//
//   void _goToNextQuestion() {          //(function for moving to Next question)
//     if (_currentQuestion < _questions.length - 1) {
//       setState(() {
//         _currentQuestion++;
//       });
//     } else {
//       Navigator.pushReplacement(          //(Navigate to Result page)
//         context,
//         MaterialPageRoute(builder: (context) => ResultPage(score: _score)),
//       );
//     }
//   }
//
//   void _goToPreviousQuestion() {      //(function for going back to previous Question)
//     if (_currentQuestion > 0) {
//       setState(() {
//         _currentQuestion--;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Quiz'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(                                               //(Display the Question)
//               _questions[_currentQuestion]['question'] as String,
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             ...(_questions[_currentQuestion]['options'] as List<String>).map((option) {
//               //(The spread operator unpacks the list of widgets created by .map().)
//               return ElevatedButton(
//                 onPressed: () {
//                   _checkAnswer(option);
//                   _goToNextQuestion();
//                 },
//                 child: Text(option),
//               );
//             }),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: _currentQuestion > 0 ? _goToPreviousQuestion : null,
//                   child: Text('Previous'),    //(Going back to previous question)
//                 ),
//                 ElevatedButton(
//                   onPressed: _currentQuestion < _questions.length - 1 ? _goToNextQuestion : null,
//                   child: Text('Next'),      //(Next: Moving to next question)
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//  }

// import 'package:flutter/material.dart';
// import 'result_page.dart';
//
// class QuizPage extends StatefulWidget {
//   @override
//   _QuizPageState createState() => _QuizPageState();
// }
//
// class _QuizPageState extends State<QuizPage> {
//   int _currentQuestion = 0;
//   int _score = 0;
//   String? _selectedAnswer;
//
//   final List<Map<String, Object>> _questions = [
//     {
//       "question": "1. What is the default file extension for an Android layout file?",
//       "options": ["A) .html", "B) .xml", "C) .json", "D) .css"],
//       "answer": "B) .xml"
//     },
//     {
//       "question": "2. Which of the following is used to define a clickable button in Android?",
//       "options": ["A) <input>", "B) <button>", "C) <Button>", "D) <clickable>"],
//       "answer": "C) <Button>"
//     },
//     {
//       "question": "3. Which method is used to display a short message to the user?",
//       "options": ["A) Log.d()", "B) Toast.makeText()", "C) AlertDialog.show()", "D) System.out.println()"],
//       "answer": "B) Toast.makeText()"
//     },
//     {
//       "question": "4. What does AVD stand for in Android Studio?",
//       "options": ["A) Android Virtual Design", "B) Android Virtual Device", "C) App Visual Design", "D) Advanced Visual Display"],
//       "answer": "B) Android Virtual Device"
//     },
//     {
//       "question": "5. Which XML attribute is used to set the text of a TextView?",
//       "options": ["A) textColor", "B) textSize", "C) text", "D) textStyle"],
//       "answer": "C) text"
//     },
//     {
//       "question": "6. Which method is called when an Activity is first created?",
//       "options": ["A) onStart()", "B) onCreate()", "C) onResume()", "D) onPause()"],
//       "answer": "B) onCreate()"
//     },
//     {
//       "question": "7. Which method is used to find a view by its ID in an Activity?",
//       "options": ["A) findViewById()", "B) findById()", "C) getViewById()", "D) findId()"],
//       "answer": "A) findViewById()"
//     },
//     {
//       "question": "8. What is the parent class of all Activities in Android?",
//       "options": ["A) Application", "B) Context", "C) Activity", "D) View"],
//       "answer": "C) Activity"
//     },
//     {
//       "question": "9. Which programming languages are mainly used in Android Studio?",
//       "options": ["A) Python and Ruby", "B) Java and Kotlin", "C) C++ and Swift", "D) PHP and HTML"],
//       "answer": "B) Java and Kotlin"
//     },
//     {
//       "question": "10. Which of these is not a valid Android component?",
//       "options": ["A) Activity", "B) Fragment", "C) Broadcast Receiver", "D) Controller"],
//       "answer": "D) Controller"
//     },
//   ];
//
//   void _checkAnswer() {
//     if (_selectedAnswer == _questions[_currentQuestion]['answer']) {
//       _score++;
//     }
//   }
//
//   void _nextQuestion() {
//     if (_selectedAnswer != null) {
//       _checkAnswer();
//       if (_currentQuestion < _questions.length - 1) {
//         setState(() {
//           _currentQuestion++;
//           _selectedAnswer = null; // Reset for the next question
//         });
//       } else {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => ResultPage(score: _score)),
//         );
//       }
//     }
//   }
//
//   void _previousQuestion() {
//     if (_currentQuestion > 0) {
//       setState(() {
//         _currentQuestion--;
//         _selectedAnswer = null; // Reset for the previous question
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Quiz'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               _questions[_currentQuestion]['question'] as String,
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             ...(_questions[_currentQuestion]['options'] as List<String>).map((option) {
//               return RadioListTile<String>(
//                 title: Text(option),
//                 value: option,
//                 groupValue: _selectedAnswer,
//                 onChanged: (value) {
//                   setState(() {
//                     _selectedAnswer = value;
//                   });
//                 },
//               );
//             }).toList(),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: _previousQuestion,
//                   child: Text('Previous'),
//                 ),
//                 ElevatedButton(
//                   onPressed: _selectedAnswer != null ? _nextQuestion : null,
//                   child: Text('Next'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'result_page.dart';
//
// class QuizPage extends StatefulWidget {
//   const QuizPage({super.key});
//
//   @override
//   _QuizPageState createState() => _QuizPageState();
// }
//
// class _QuizPageState extends State<QuizPage> {
//   int _currentIndex = 0;
//   int _score = 0;
//
//   final List<Map<String, Object>> _questions = [
//     {
//       "question": "1. What is the default file extension for an Android layout file?",
//       "options": ["A) .html", "B) .xml", "C) .json", "D) .css"],
//       "answer": "B) .xml"
//     },
//     {
//       "question": "2. Which of the following is used to define a clickable button in Android?",
//       "options": ["A) <input>", "B) <button>", "C) <Button>", "D) <clickable>"],
//       "answer": "C) <Button>"
//     },
//     {
//       "question": "3. Which method is used to display a short message to the user?",
//       "options": ["A) Log.d()", "B) Toast.makeText()", "C) AlertDialog.show()", "D) System.out.println()"],
//       "answer": "B) Toast.makeText()"
//     },
//     {
//       "question": "4. What does AVD stand for in Android Studio?",
//       "options": ["A) Android Virtual Design", "B) Android Virtual Device", "C) App Visual Design", "D) Advanced Visual Display"],
//       "answer": "B) Android Virtual Device"
//     },
//     {
//       "question": "5. Which XML attribute is used to set the text of a TextView?",
//       "options": ["A) textColor", "B) textSize", "C) text", "D) textStyle"],
//       "answer": "C) text"
//     },
//     {
//       "question": "6. Which method is called when an Activity is first created?",
//       "options": ["A) onStart()", "B) onCreate()", "C) onResume()", "D) onPause()"],
//       "answer": "B) onCreate()"
//     },
//     {
//       "question": "7. Which method is used to find a view by its ID in an Activity?",
//       "options": ["A) findViewById()", "B) findById()", "C) getViewById()", "D) findId()"],
//       "answer": "A) findViewById()"
//     },
//     {
//       "question": "8. What is the parent class of all Activities in Android?",
//       "options": ["A) Application", "B) Context", "C) Activity", "D) View"],
//       "answer": "C) Activity"
//     },
//     {
//       "question": "9. Which programming languages are mainly used in Android Studio?",
//       "options": ["A) Python and Ruby", "B) Java and Kotlin", "C) C++ and Swift", "D) PHP and HTML"],
//       "answer": "B) Java and Kotlin"
//     },
//     {
//       "question": "10. Which of these is not a valid Android component?",
//       "options": ["A) Activity", "B) Fragment", "C) Broadcast Receiver", "D) Controller"],
//       "answer": "D) Controller"
//     },
//   ];
//
//   void _checkAnswer(int questionIndex, String selectedOption) {
//     if (selectedOption == _questions[questionIndex]['answer']) {
//       _score++;
//     }
//   }
//
//   void _goToNext() {
//     if (_currentIndex + 1 < _questions.length) {
//       setState(() {
//         _currentIndex++;
//       });
//     } else {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => ResultPage(score: _score)),
//       );
//     }
//   }
//
//   void _goToPrevious() {
//     if (_currentIndex > 0) {
//       setState(() {
//         _currentIndex--;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     bool isMobile = screenWidth < 600;
//
//     List<int> questionIndexes;
//
//     if (isMobile) {
//       questionIndexes = [_currentIndex];
//     } else {
//       int endIndex = (_currentIndex + 3).clamp(0, _questions.length);
//       questionIndexes = List<int>.generate(
//           endIndex - _currentIndex, (i) => _currentIndex + i);
//     }
//
//     return Scaffold(
//       appBar: AppBar(title: Text('Quiz')),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           children: [
//             Expanded(
//               child: ListView(
//                 children: questionIndexes.map((index) {
//                   var question = _questions[index];
//                   return Card(
//                     margin: EdgeInsets.only(bottom: 16),
//                     child: Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             question['question'] as String,
//                             style: TextStyle(
//                                 fontSize: 18, fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(height: 10),
//                           ...(question['options'] as List<String>).map((option) {
//                             return Padding(
//                               padding: const EdgeInsets.symmetric(vertical: 4.0),
//                               child: ElevatedButton(
//                                 onPressed: () {
//                                   _checkAnswer(index, option);
//                                   _goToNext();
//                                 },
//                                 child: Text(option),
//                               ),
//                             );
//                           }).toList(),
//                         ],
//                       ),
//                     ),
//                   );
//                 }).toList(),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: _currentIndex > 0 ? _goToPrevious : null,
//                   child: Text('Previous'),
//                 ),
//                 ElevatedButton(
//                   onPressed: _currentIndex < _questions.length - 1 ? _goToNext : null,
//                   child: Text('Next'),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'result_page.dart';
import 'responsive_row_column.dart'; // <-- import it here

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentIndex = 0;
  int _score = 0;

  final List<Map<String, Object>> _questions = [
    {
      "question":
          "1. What is the default file extension for an Android layout file?",
      "options": ["A) .html", "B) .xml", "C) .json", "D) .css"],
      "answer": "B) .xml",
    },
    {
      "question":
          "2. Which of the following is used to define a clickable button in Android?",
      "options": ["A) <input>", "B) <button>", "C) <Button>", "D) <clickable>"],
      "answer": "C) <Button>",
    },
    {
      "question":
          "3. Which method is used to display a short message to the user?",
      "options": [
        "A) Log.d()",
        "B) Toast.makeText()",
        "C) AlertDialog.show()",
        "D) System.out.println()",
      ],
      "answer": "B) Toast.makeText()",
    },
    {
      "question": "4. What does AVD stand for in Android Studio?",
      "options": [
        "A) Android Virtual Design",
        "B) Android Virtual Device",
        "C) App Visual Design",
        "D) Advanced Visual Display",
      ],
      "answer": "B) Android Virtual Device",
    },
    {
      "question":
          "5. Which XML attribute is used to set the text of a TextView?",
      "options": ["A) textColor", "B) textSize", "C) text", "D) textStyle"],
      "answer": "C) text",
    },
    {
      "question":
          "6. Which method is called when an Activity is first created?",
      "options": [
        "A) onStart()",
        "B) onCreate()",
        "C) onResume()",
        "D) onPause()",
      ],
      "answer": "B) onCreate()",
    },
    {
      "question":
          "7. Which method is used to find a view by its ID in an Activity?",
      "options": [
        "A) findViewById()",
        "B) findById()",
        "C) getViewById()",
        "D) findId()",
      ],
      "answer": "A) findViewById()",
    },
    {
      "question": "8. What is the parent class of all Activities in Android?",
      "options": ["A) Application", "B) Context", "C) Activity", "D) View"],
      "answer": "C) Activity",
    },
    {
      "question":
          "9. Which programming languages are mainly used in Android Studio?",
      "options": [
        "A) Python and Ruby",
        "B) Java and Kotlin",
        "C) C++ and Swift",
        "D) PHP and HTML",
      ],
      "answer": "B) Java and Kotlin",
    },
    {
      "question": "10. Which of these is not a valid Android component?",
      "options": [
        "A) Activity",
        "B) Fragment",
        "C) Broadcast Receiver",
        "D) Controller",
      ],
      "answer": "D) Controller",
    },
  ];

  void _checkAnswer(int questionIndex, String selectedOption) {
    if (selectedOption == _questions[questionIndex]['answer']) {
      _score++;
    }
  }

  void _goToNext() {
    if (_currentIndex + 1 < _questions.length) {
      setState(() {
        _currentIndex++;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ResultPage(score: _score)),
      );
    }
  }

  void _goToPrevious() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    List<int> questionIndexes;

    // On mobile: 1 question at a time, on desktop: all questions in column
    if (isMobile) {
      questionIndexes = [_currentIndex];
    } else {
      questionIndexes = List<int>.generate(
          _questions.length - _currentIndex, (i) => _currentIndex + i);
    }

    return Scaffold(
      appBar: AppBar(title: Text('Quiz')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: questionIndexes.map((index) {
                    var question = _questions[index];
                    return Card(
                      margin: EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              question['question'] as String,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 12),
                            isMobile
                                ? Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.stretch,
                              children: (question['options']
                              as List<String>)
                                  .map((option) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      _checkAnswer(index, option);
                                      _goToNext();
                                    },
                                    child: Text(option),
                                  ),
                                );
                              }).toList(),
                            )
                                : Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              children: (question['options']
                              as List<String>)
                                  .map((option) {
                                return Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        _checkAnswer(index, option);
                                        _goToNext();
                                      },
                                      child: Text(option),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _currentIndex > 0 ? _goToPrevious : null,
                  child: Text('Previous'),
                ),
                ElevatedButton(
                  onPressed: _currentIndex < _questions.length - 1
                      ? _goToNext
                      : null,
                  child: Text('Next'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}