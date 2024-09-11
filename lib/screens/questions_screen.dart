import 'package:cu_iti_quizapp/screens/score_screen.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Sports Quiz'),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 20),
            child: Text(
              '8/15',
              style: TextStyle(fontSize: 22),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "1-How many time did Brazil won world cup?",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ScoreScreen(),
                    ),
                  );
                },
                child: Text('2')),
            ElevatedButton(onPressed: () {}, child: Text('3')),
            ElevatedButton(onPressed: () {}, child: Text('4')),
            ElevatedButton(onPressed: () {}, child: Text('5')),
          ],
        ),
      ),
    );
  }
}
