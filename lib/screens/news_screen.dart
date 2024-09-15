import 'package:cu_iti_quizapp/data/models/news_model.dart';
import 'package:cu_iti_quizapp/data/repos/news_repo.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  NewsResponse? myNew;
  int state = 0;

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
                  onPressed: () async {
                    setState(() {
                      state = 1;
                    });
                    myNew = await NewsRepo().getNews();

                    if (myNew != null) {
                      setState(() {
                        state = 2;
                      });
                    }
                    setState(() {});
                  },
                  child: Text('Get News')),
              state == 0
                  ? Text('please click get news')
                  : state == 1
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : Column(
                          children: [
                            for (int i = 0; i < myNew!.articles.length; i++)
                              Container(
                                margin: EdgeInsets.all(8),
                                padding: EdgeInsets.all(16),
                                height: MediaQuery.of(context).size.height *
                                    240 /
                                    812,
                                width: MediaQuery.of(context).size.width *
                                    320 /
                                    375,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          myNew!.articles[i].urlToImage ?? "")),
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(22),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              80 /
                                              812,
                                    ),
                                    Text("by ${myNew!.articles[i].author}"),
                                    Text(
                                      myNew!.articles[i].content ??
                                          "no content",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                      maxLines: 3,
                                    ),
                                    Spacer(),
                                    Text(
                                      myNew!.articles[i].description ??
                                          "No description",
                                      maxLines: 2,
                                    ),
                                  ],
                                ),
                              )
                          ],
                        )
            ],
          ),
        ),
      ),
    );
  }
}
