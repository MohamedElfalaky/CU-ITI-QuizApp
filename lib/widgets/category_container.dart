import 'package:cu_iti_quizapp/screens/questions_screen.dart';
import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final List questionList;
  final Color themeColor;
  final String quizName;
  const CategoryContainer(
      {super.key,
      required this.questionList,
      required this.quizName,
      required this.themeColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => QuestionsScreen(
                questionList: questionList,
                themeColor: themeColor,
                quizName: quizName,
              ),
            ),
          );
        },
        child: Container(
          color: themeColor,
          child: Center(
              child: Text(
            quizName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
          )),
        ),
      ),
    );
  }
}
