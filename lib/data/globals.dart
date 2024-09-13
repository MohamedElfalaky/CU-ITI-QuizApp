import 'package:flutter/material.dart';

List sportQuizQuestions = [
  {
    'questionText': 'How many times did Egypt won AFCON?',
    'answers': [
      {'ans': '4', 'score': 0},
      {'ans': '5', 'score': 0},
      {'ans': '6', 'score': 0},
      {'ans': '7', 'score': 1},
      {'ans': '5', 'score': 0},
      {'ans': '6', 'score': 0},
    ],
    // 'correctAnswer': '7'
  },
  {
    'questionText': 'How many times did Brazil won World cup?',
    'answers': [
      {'ans': '4', 'score': 0},
      {'ans': '5', 'score': 1},
      {'ans': '6', 'score': 0},
    ],
  },
  {
    'questionText': 'What is the Arabian contry that hosted world cup',
    'answers': [
      {'ans': 'KSA', 'score': 0},
      {'ans': 'Egypt', 'score': 0},
      {'ans': 'Iraq', 'score': 0},
      {'ans': 'Qatar', 'score': 1},
      {'ans': 'Algeria', 'score': 0},
    ],
  },
];

List iqQuizQuestions = [
  {
    'questionText':
        'Which shape should come next in the sequence: circle, square, triangle, circle, square, ...?',
    'answers': [
      {'ans': 'triangle', 'score': 1},
      {'ans': 'circle', 'score': 0},
      {'ans': 'square', 'score': 0},
      {'ans': 'pentagon', 'score': 0},
    ],
  },
  {
    'questionText':
        'If you rearrange the letters "CIFAIPC" you would have the name of a:',
    'answers': [
      {'ans': 'Animal', 'score': 0},
      {'ans': 'Country', 'score': 1},
      {'ans': 'City', 'score': 0},
      {'ans': 'Vegetable', 'score': 0},
    ],
  },
  {
    'questionText':
        'What is the missing number in the sequence: 3, 9, 27, _, 243?',
    'answers': [
      {'ans': '54', 'score': 0},
      {'ans': '81', 'score': 1},
      {'ans': '120', 'score': 0},
      {'ans': '100', 'score': 0},
    ],
  },
  {
    'questionText':
        'Which one of these words is the odd one out: Tiger, Lion, Elephant, Cheetah?',
    'answers': [
      {'ans': 'Elephant', 'score': 1},
      {'ans': 'Cheetah', 'score': 0},
      {'ans': 'Tiger', 'score': 0},
      {'ans': 'Lion', 'score': 0},
    ],
  },
  {
    'questionText':
        'John, Kevin, and Sarah are siblings. Sarah is older than John but younger than Kevin. Who is the oldest?',
    'answers': [
      {'ans': 'John', 'score': 0},
      {'ans': 'Sarah', 'score': 0},
      {'ans': 'Kevin', 'score': 1},
    ],
  },
  {
    'questionText': 'Which number is the odd one out: 2, 4, 6, 9, 10?',
    'answers': [
      {'ans': '6', 'score': 0},
      {'ans': '10', 'score': 0},
      {'ans': '9', 'score': 1},
      {'ans': '4', 'score': 0},
    ],
  },
];

List mathQuizQuestions = [
  {
    'questionText': 'What is the value of 3 + 7 × 2?',
    'answers': [
      {'ans': '17', 'score': 0},
      {'ans': '20', 'score': 1},
      {'ans': '14', 'score': 0},
      {'ans': '21', 'score': 0},
    ],
  },
  {
    'questionText': 'What is the square root of 81?',
    'answers': [
      {'ans': '7', 'score': 0},
      {'ans': '8', 'score': 0},
      {'ans': '9', 'score': 1},
      {'ans': '10', 'score': 0},
    ],
  },
  {
    'questionText': 'Solve for x: 5x = 25',
    'answers': [
      {'ans': 'x = 0', 'score': 0},
      {'ans': 'x = 3', 'score': 0},
      {'ans': 'x = 5', 'score': 1},
      {'ans': 'x = 10', 'score': 0},
    ],
  },
  {
    'questionText': 'Which is the smallest prime number?',
    'answers': [
      {'ans': '1', 'score': 0},
      {'ans': '2', 'score': 1},
      {'ans': '3', 'score': 0},
      {'ans': '5', 'score': 0},
    ],
  },
  {
    'questionText':
        'If a triangle has angles of 60°, 60°, and 60°, what type of triangle is it?',
    'answers': [
      {'ans': 'Right-angled', 'score': 0},
      {'ans': 'Isosceles', 'score': 0},
      {'ans': 'Equilateral', 'score': 1},
      {'ans': 'Scalene', 'score': 0},
    ],
  },
  {
    'questionText': 'What is 12% of 50?',
    'answers': [
      {'ans': '6', 'score': 1},
      {'ans': '12', 'score': 0},
      {'ans': '4', 'score': 0},
      {'ans': '8', 'score': 0},
    ],
  },
  {
    'questionText': 'What is the value of π (pi) to two decimal places?',
    'answers': [
      {'ans': '3.12', 'score': 0},
      {'ans': '3.14', 'score': 1},
      {'ans': '3.16', 'score': 0},
      {'ans': '3.15', 'score': 0},
    ],
  },
  {
    'questionText': 'Solve for y: 2y + 6 = 14',
    'answers': [
      {'ans': 'y = 2', 'score': 0},
      {'ans': 'y = 3', 'score': 1},
      {'ans': 'y = 4', 'score': 0},
      {'ans': 'y = 5', 'score': 0},
    ],
  },
  {
    'questionText': 'What is the next number in the series: 2, 4, 8, 16, __?',
    'answers': [
      {'ans': '24', 'score': 0},
      {'ans': '32', 'score': 1},
      {'ans': '20', 'score': 0},
      {'ans': '28', 'score': 0},
    ],
  },
  {
    'questionText': 'Which is larger: 4/5 or 3/4?',
    'answers': [
      {'ans': '4/5', 'score': 1},
      {'ans': '3/4', 'score': 0},
    ],
  },
];

var userNameController = TextEditingController();
