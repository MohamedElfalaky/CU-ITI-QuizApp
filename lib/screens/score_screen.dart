import 'package:cu_iti_quizapp/data/globals.dart';
import 'package:cu_iti_quizapp/screens/category_screen.dart';
import 'package:cu_iti_quizapp/screens/landing_screen.dart';
import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  final int numOfQuestion;
  const ScoreScreen(
      {super.key, required this.score, required this.numOfQuestion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 22),
                    children: [
                      TextSpan(text: 'Hi '),
                      TextSpan(
                          text: userNameController.text,
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 26,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              ',You have just finished the quiz, your score is '),
                      TextSpan(
                          text: '$score/$numOfQuestion',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 26,
                              fontWeight: FontWeight.bold))
                    ]),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const CategoryScreen(),
                        ));
                  },
                  child: Text("Play again")),
              TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const LandingScreen(),
                        ),
                        ModalRoute.withName('//'));
                  },
                  child: Text("Log out"))
            ],
          ),
        ),
      ),
    );
  }
}
