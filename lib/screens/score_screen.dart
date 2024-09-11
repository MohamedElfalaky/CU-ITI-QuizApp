import 'package:cu_iti_quizapp/screens/category_screen.dart';
import 'package:cu_iti_quizapp/screens/landing_screen.dart';
import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Hi Mohamed,You have just finished the quiz, your score is 12/15'),
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
    );
  }
}
