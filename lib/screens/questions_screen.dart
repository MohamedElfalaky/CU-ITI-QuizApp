import 'package:cu_iti_quizapp/data/globals.dart';
import 'package:cu_iti_quizapp/screens/score_screen.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  final List questionList;
  final Color themeColor;
  final String quizName;
  QuestionsScreen(
      {super.key,
      required this.questionList,
      required this.themeColor,
      required this.quizName});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int _currentIndex = 0;
  int _currentScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.themeColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(widget.quizName),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 20),
            child: Text(
              '${_currentIndex + 1}/${widget.questionList.length}',
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
              widget.questionList[_currentIndex]['questionText'],
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
            ),
            SizedBox(
              height: 12,
            ),
            for (int i = 0;
                i < widget.questionList[_currentIndex]['answers'].length;
                i++)
              ElevatedButton(
                  onPressed: () {
                    _currentScore = _currentScore +
                        (widget.questionList[_currentIndex]['answers'][i]
                            ['score'] as int);
                    // _currentIndex++;
                    if ((_currentIndex + 1) == widget.questionList.length) {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => ScoreScreen(
                            score: _currentScore,
                            numOfQuestion: widget.questionList.length,
                          ),
                        ),
                      );
                    } else {
                      setState(() {
                        _currentIndex = _currentIndex + 1;
                      });
                    }
                  },
                  child: Text(
                      widget.questionList[_currentIndex]['answers'][i]['ans'])),
          ],
        ),
      ),
    );
  }
}
