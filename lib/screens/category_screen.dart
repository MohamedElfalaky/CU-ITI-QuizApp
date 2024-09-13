import 'package:cu_iti_quizapp/data/globals.dart';
import 'package:cu_iti_quizapp/screens/questions_screen.dart';
import 'package:cu_iti_quizapp/widgets/category_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CategoryContainer(
            questionList: sportQuizQuestions,
            themeColor: Colors.blue,
            quizName: 'Sports quiz',
          ),
          CategoryContainer(
            questionList: iqQuizQuestions,
            themeColor: Colors.white,
            quizName: 'IQ quiz',
          ),
          CategoryContainer(
            quizName: 'Math quiz',
            questionList: mathQuizQuestions,
            themeColor: Colors.red,
          ),
          CategoryContainer(
              questionList: iqQuizQuestions,
              quizName: 'Arts quiz',
              themeColor: Colors.green)
        ],
      ),
    );
  }
}
