import 'package:cu_iti_quizapp/screens/questions_screen.dart';
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
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const QuestionsScreen(),
                  ),
                );
              },
              child: Container(
                color: Colors.blue,
                child: Center(
                    child: Text(
                  'Sports quiz',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                )),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const QuestionsScreen(),
                  ),
                );
              },
              child: Container(
                color: Colors.white,
                child: Center(
                    child: Text('IQ quiz',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 36))),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const QuestionsScreen(),
                  ),
                );
              },
              child: Container(
                color: Colors.red,
                child: Center(
                    child: Text('Math quiz',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 36))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
