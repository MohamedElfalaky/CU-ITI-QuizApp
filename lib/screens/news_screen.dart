import 'package:cu_iti_quizapp/data/repos/news_repo.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () {
                    NewsRepo().getNews();
                  },
                  child: Text('Get News')),
              for (int i = 0; i < 7; i++)
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(16),
                  height: MediaQuery.of(context).size.height * 240 / 812,
                  width: MediaQuery.of(context).size.width * 320 / 375,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/app_backgroun_image.jpg')),
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 80 / 812,
                      ),
                      Text("by Ryan Browne"),
                      Text(
                        "Crypto investors should be prepared to lose all their money, BOE governor says",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        maxLines: 3,
                      ),
                      Spacer(),
                      Text(
                        "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                        maxLines: 2,
                      ),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
